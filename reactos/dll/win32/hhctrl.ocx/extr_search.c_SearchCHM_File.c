
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_9__ {int len; char* buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef char WCHAR ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int BLOCK_SIZE ;
 int CP_ACP ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*,int ,int ) ;
 int IStorage_OpenStream (int *,char const*,int *,int ,int ,int **) ;
 int IStream_Release (int *) ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 int STGM_READ ;
 int TRUE ;
 int _strnicmp (char*,char*,int) ;
 int debugstr_w (char const*) ;
 int get_node_name (TYPE_1__*,TYPE_1__*) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 char* heap_realloc (char*,int) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ next_content (int *,TYPE_1__*) ;
 scalar_t__ next_node (int *,TYPE_1__*) ;
 int strbuf_free (TYPE_1__*) ;
 int strbuf_init (TYPE_1__*) ;
 int strbuf_zero (TYPE_1__*) ;
 int stream_init (int *,int *) ;
 scalar_t__ strstr (char*,char const*) ;
 char tolower (char) ;

__attribute__((used)) static WCHAR *SearchCHM_File(IStorage *pStorage, const WCHAR *file, const char *needle)
{
    char *buffer = heap_alloc(BLOCK_SIZE);
    strbuf_t content, node, node_name;
    IStream *temp_stream = ((void*)0);
    DWORD i, buffer_size = 0;
    WCHAR *title = ((void*)0);
    BOOL found = FALSE;
    stream_t stream;
    HRESULT hres;

    hres = IStorage_OpenStream(pStorage, file, ((void*)0), STGM_READ, 0, &temp_stream);
    if(FAILED(hres)) {
        FIXME("Could not open '%s' stream: %08x\n", debugstr_w(file), hres);
        goto cleanup;
    }

    strbuf_init(&node);
    strbuf_init(&content);
    strbuf_init(&node_name);

    stream_init(&stream, temp_stream);


    while(next_node(&stream, &node)) {
        get_node_name(&node, &node_name);

        if(next_content(&stream, &content) && content.len > 1)
        {
            char *text = &content.buf[1];
            int textlen = content.len-1;

            if(!_strnicmp(node_name.buf, "title", -1))
            {
                int wlen = MultiByteToWideChar(CP_ACP, 0, text, textlen, ((void*)0), 0);
                title = heap_alloc((wlen+1)*sizeof(WCHAR));
                MultiByteToWideChar(CP_ACP, 0, text, textlen, title, wlen);
                title[wlen] = 0;
            }

            buffer = heap_realloc(buffer, buffer_size + textlen + 1);
            memcpy(&buffer[buffer_size], text, textlen);
            buffer[buffer_size + textlen] = '\0';
            buffer_size += textlen;
        }

        strbuf_zero(&node);
        strbuf_zero(&content);
    }




    for(i=0;i<buffer_size;i++)
        buffer[i] = tolower(buffer[i]);


    if(strstr(buffer, needle))
        found = TRUE;

    strbuf_free(&node);
    strbuf_free(&content);
    strbuf_free(&node_name);

cleanup:
    heap_free(buffer);
    if(temp_stream)
        IStream_Release(temp_stream);
    if(!found)
    {
        heap_free(title);
        return ((void*)0);
    }
    return title;
}
