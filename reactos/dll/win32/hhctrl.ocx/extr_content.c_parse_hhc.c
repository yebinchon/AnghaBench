
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_8__ {int buf; } ;
typedef TYPE_1__ strbuf_t ;
typedef int insert_type_t ;
typedef int IStream ;
typedef int HHInfo ;
typedef int ContentItem ;


 int INSERT_CHILD ;
 int INSERT_NEXT ;
 int TRACE (char*,int ) ;
 int _strnicmp (int ,char*,int) ;
 int get_node_name (TYPE_1__*,TYPE_1__*) ;
 int * insert_item (int *,int *,int ) ;
 scalar_t__ next_node (int *,TYPE_1__*) ;
 int * parse_ul (int *,int *,int *) ;
 int strbuf_free (TYPE_1__*) ;
 int strbuf_init (TYPE_1__*) ;
 int strbuf_zero (TYPE_1__*) ;
 int stream_init (int *,int *) ;

__attribute__((used)) static ContentItem *parse_hhc(HHInfo *info, IStream *str, ContentItem *hhc_root,
        insert_type_t *insert_type)
{
    stream_t stream;
    strbuf_t node, node_name;
    ContentItem *ret = ((void*)0), *prev = ((void*)0);

    *insert_type = INSERT_NEXT;

    strbuf_init(&node);
    strbuf_init(&node_name);

    stream_init(&stream, str);

    while(next_node(&stream, &node)) {
        get_node_name(&node, &node_name);

        TRACE("%s\n", node.buf);

        if(!_strnicmp(node_name.buf, "ul", -1)) {
            ContentItem *item = parse_ul(info, &stream, hhc_root);
            prev = insert_item(prev, item, INSERT_CHILD);
            if(!ret)
                ret = prev;
            *insert_type = INSERT_CHILD;
        }

        strbuf_zero(&node);
    }

    strbuf_free(&node);
    strbuf_free(&node_name);

    return ret;
}
