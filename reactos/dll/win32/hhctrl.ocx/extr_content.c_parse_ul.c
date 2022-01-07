
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int sz_text_sitemap ;
typedef int stream_t ;
struct TYPE_8__ {int buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int insert_type_t ;
typedef int HHInfo ;
typedef int ContentItem ;


 int INSERT_CHILD ;
 int TRACE (char*,int ) ;
 int _strnicmp (int ,char*,int) ;
 char* get_attr (int ,char*,int*) ;
 int get_node_name (TYPE_1__*,TYPE_1__*) ;
 int * insert_item (int *,int *,int ) ;
 int memcmp (char const*,char const*,int) ;
 scalar_t__ next_node (int *,TYPE_1__*) ;
 int * parse_sitemap_object (int *,int *,int *,int *) ;
 int strbuf_free (TYPE_1__*) ;
 int strbuf_init (TYPE_1__*) ;
 int strbuf_zero (TYPE_1__*) ;

__attribute__((used)) static ContentItem *parse_ul(HHInfo *info, stream_t *stream, ContentItem *hhc_root)
{
    strbuf_t node, node_name;
    ContentItem *ret = ((void*)0), *prev = ((void*)0), *new_item = ((void*)0);
    insert_type_t it;

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
                new_item = parse_sitemap_object(info, stream, hhc_root, &it);
                prev = insert_item(prev, new_item, it);
                if(!ret)
                    ret = prev;
            }
        }else if(!_strnicmp(node_name.buf, "ul", -1)) {
            new_item = parse_ul(info, stream, hhc_root);
            insert_item(prev, new_item, INSERT_CHILD);
        }else if(!_strnicmp(node_name.buf, "/ul", -1)) {
            break;
        }

        strbuf_zero(&node);
    }

    strbuf_free(&node);
    strbuf_free(&node_name);

    return ret;
}
