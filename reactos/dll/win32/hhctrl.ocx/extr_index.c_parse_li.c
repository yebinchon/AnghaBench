
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int sz_text_sitemap ;
typedef int stream_t ;
struct TYPE_8__ {int buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int IndexItem ;
typedef int HHInfo ;


 int FIXME (char*) ;
 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int _strnicmp (int ,char*,int) ;
 char* get_attr (int ,char*,int*) ;
 int get_node_name (TYPE_1__*,TYPE_1__*) ;
 int memcmp (char const*,char const*,int) ;
 scalar_t__ next_node (int *,TYPE_1__*) ;
 int * parse_index_sitemap_object (int *,int *) ;
 int strbuf_free (TYPE_1__*) ;
 int strbuf_init (TYPE_1__*) ;
 int strbuf_zero (TYPE_1__*) ;

__attribute__((used)) static IndexItem *parse_li(HHInfo *info, stream_t *stream)
{
    strbuf_t node, node_name;
    IndexItem *ret = ((void*)0);

    strbuf_init(&node);
    strbuf_init(&node_name);

    while(next_node(stream, &node)) {
        get_node_name(&node, &node_name);

        TRACE("%s\n", node.buf);

        if(!_strnicmp(node_name.buf, "object", -1)) {
            const char *ptr;
            int len;

            static const char sz_text_sitemap[] = "text/sitemap";

            ptr = get_attr(node.buf, "type", &len);

            if(ptr && len == sizeof(sz_text_sitemap)-1
               && !memcmp(ptr, sz_text_sitemap, len)) {
                ret = parse_index_sitemap_object(info, stream);
                break;
            }
        }else {
            WARN("Unhandled tag! %s\n", node_name.buf);
        }

        strbuf_zero(&node);
    }
    if(!ret)
        FIXME("Failed to parse <li> tag!\n");

    strbuf_free(&node);
    strbuf_free(&node_name);

    return ret;
}
