#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_17__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ strbuf_t ;
struct TYPE_18__ {int nItems; int indentLevel; struct TYPE_18__* next; int /*<<< orphan*/  merge; struct TYPE_18__* items; struct TYPE_18__* keyword; } ;
typedef  int /*<<< orphan*/  IndexSubItem ;
typedef  TYPE_2__ IndexItem ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(HHInfo *info, IStream *str, IndexItem *item)
{
    stream_t stream;
    strbuf_t node, node_name;
    int indent_level = -1;

    FUNC11(&node);
    FUNC11(&node_name);

    FUNC13(&stream, str);

    while(FUNC8(&stream, &node)) {
        FUNC3(&node, &node_name);

        FUNC0("%s\n", node.buf);

        if(!FUNC2(node_name.buf, "li", -1)) {
            IndexItem *new_item;

            new_item = FUNC9(info, &stream);
            if(new_item && item->keyword && FUNC6(new_item->keyword, item->keyword) == 0) {
                int num_items = item->nItems;

                FUNC5(item, num_items+1);
                FUNC7(&item->items[num_items], &new_item->items[0], sizeof(IndexSubItem));
                FUNC4(new_item->keyword);
                FUNC4(new_item->items);
                FUNC4(new_item);
            } else if(new_item) {
                item->next = new_item;
                item->next->merge = item->merge;
                item = item->next;
                item->indentLevel = indent_level;
            }
        }else if(!FUNC2(node_name.buf, "ul", -1)) {
            indent_level++;
        }else if(!FUNC2(node_name.buf, "/ul", -1)) {
            indent_level--;
        }else {
            FUNC1("Unhandled tag! %s\n", node_name.buf);
        }

        FUNC12(&node);
    }

    FUNC10(&node);
    FUNC10(&node_name);
}