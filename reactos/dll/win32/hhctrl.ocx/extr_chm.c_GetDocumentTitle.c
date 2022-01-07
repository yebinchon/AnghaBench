
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_11__ {int len; int * buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int WCHAR ;
struct TYPE_12__ {int * pStorage; } ;
typedef int * LPCWSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef TYPE_2__ CHMInfo ;


 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int *) ;
 int IStorage_AddRef (int *) ;
 int IStorage_OpenStream (int *,int *,int *,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 int STGM_READ ;
 int TRACE (char*,int *) ;
 int WARN (char*,...) ;
 int _strnicmp (int *,char*,int) ;
 int * debugstr_w (int *) ;
 int get_node_name (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ next_content (int *,TYPE_1__*) ;
 scalar_t__ next_node (int *,TYPE_1__*) ;
 int strbuf_free (TYPE_1__*) ;
 int strbuf_init (TYPE_1__*) ;
 int strbuf_zero (TYPE_1__*) ;
 int * strdupnAtoW (int *,int) ;
 int stream_init (int *,int *) ;

WCHAR *GetDocumentTitle(CHMInfo *info, LPCWSTR document)
{
    strbuf_t node, node_name, content;
    WCHAR *document_title = ((void*)0);
    IStream *str = ((void*)0);
    IStorage *storage;
    stream_t stream;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(document));

    storage = info->pStorage;
    if(!storage) {
        WARN("Could not open storage to obtain the title for a document.\n");
        return ((void*)0);
    }
    IStorage_AddRef(storage);

    hres = IStorage_OpenStream(storage, document, ((void*)0), STGM_READ, 0, &str);
    IStorage_Release(storage);
    if(FAILED(hres))
        WARN("Could not open stream: %08x\n", hres);

    stream_init(&stream, str);
    strbuf_init(&node);
    strbuf_init(&content);
    strbuf_init(&node_name);

    while(next_node(&stream, &node)) {
        get_node_name(&node, &node_name);

        TRACE("%s\n", node.buf);

        if(!_strnicmp(node_name.buf, "title", -1)) {
            if(next_content(&stream, &content) && content.len > 1)
            {
                document_title = strdupnAtoW(&content.buf[1], content.len-1);
                FIXME("magic: %s\n", debugstr_w(document_title));
                break;
            }
        }

        strbuf_zero(&node);
    }

    strbuf_free(&node);
    strbuf_free(&content);
    strbuf_free(&node_name);
    IStream_Release(str);

    return document_title;
}
