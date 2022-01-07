
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_17__ {int buf; } ;
typedef TYPE_1__ strbuf_t ;
struct TYPE_18__ {int nItems; int indentLevel; struct TYPE_18__* next; int merge; struct TYPE_18__* items; struct TYPE_18__* keyword; } ;
typedef int IndexSubItem ;
typedef TYPE_2__ IndexItem ;
typedef int IStream ;
typedef int HHInfo ;


 int TRACE (char*,int ) ;
 int WARN (char*,int ) ;
 int _strnicmp (int ,char*,int) ;
 int get_node_name (TYPE_1__*,TYPE_1__*) ;
 int heap_free (TYPE_2__*) ;
 int item_realloc (TYPE_2__*,int) ;
 scalar_t__ lstrcmpW (TYPE_2__*,TYPE_2__*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ next_node (int *,TYPE_1__*) ;
 TYPE_2__* parse_li (int *,int *) ;
 int strbuf_free (TYPE_1__*) ;
 int strbuf_init (TYPE_1__*) ;
 int strbuf_zero (TYPE_1__*) ;
 int stream_init (int *,int *) ;

__attribute__((used)) static void parse_hhindex(HHInfo *info, IStream *str, IndexItem *item)
{
    stream_t stream;
    strbuf_t node, node_name;
    int indent_level = -1;

    strbuf_init(&node);
    strbuf_init(&node_name);

    stream_init(&stream, str);

    while(next_node(&stream, &node)) {
        get_node_name(&node, &node_name);

        TRACE("%s\n", node.buf);

        if(!_strnicmp(node_name.buf, "li", -1)) {
            IndexItem *new_item;

            new_item = parse_li(info, &stream);
            if(new_item && item->keyword && lstrcmpW(new_item->keyword, item->keyword) == 0) {
                int num_items = item->nItems;

                item_realloc(item, num_items+1);
                memcpy(&item->items[num_items], &new_item->items[0], sizeof(IndexSubItem));
                heap_free(new_item->keyword);
                heap_free(new_item->items);
                heap_free(new_item);
            } else if(new_item) {
                item->next = new_item;
                item->next->merge = item->merge;
                item = item->next;
                item->indentLevel = indent_level;
            }
        }else if(!_strnicmp(node_name.buf, "ul", -1)) {
            indent_level++;
        }else if(!_strnicmp(node_name.buf, "/ul", -1)) {
            indent_level--;
        }else {
            WARN("Unhandled tag! %s\n", node_name.buf);
        }

        strbuf_zero(&node);
    }

    strbuf_free(&node);
    strbuf_free(&node_name);
}
