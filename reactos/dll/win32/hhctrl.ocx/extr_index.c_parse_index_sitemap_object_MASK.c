#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_15__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_2__ strbuf_t ;
struct TYPE_17__ {TYPE_1__* pCHMInfo; } ;
struct TYPE_16__ {int itemFlags; void* items; scalar_t__ nItems; } ;
struct TYPE_14__ {int /*<<< orphan*/  codePage; } ;
typedef  TYPE_3__ IndexItem ;
typedef  TYPE_4__ HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static IndexItem *FUNC10(HHInfo *info, stream_t *stream)
{
    strbuf_t node, node_name;
    IndexItem *item;

    FUNC8(&node);
    FUNC8(&node_name);

    item = FUNC4(sizeof(IndexItem));
    item->nItems = 0;
    item->items = FUNC4(0);
    item->itemFlags = 0x11;

    while(FUNC5(stream, &node)) {
        FUNC3(&node, &node_name);

        FUNC0("%s\n", node.buf);

        if(!FUNC2(node_name.buf, "param", -1)) {
            FUNC6(item, node.buf, info->pCHMInfo->codePage);
        }else if(!FUNC2(node_name.buf, "/object", -1)) {
            break;
        }else {
            FUNC1("Unhandled tag! %s\n", node_name.buf);
        }

        FUNC9(&node);
    }

    FUNC7(&node);
    FUNC7(&node_name);

    return item;
}