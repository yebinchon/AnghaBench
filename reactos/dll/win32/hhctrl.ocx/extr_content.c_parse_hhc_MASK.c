#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ strbuf_t ;
typedef  int /*<<< orphan*/  insert_type_t ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HHInfo ;
typedef  int /*<<< orphan*/  ContentItem ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT_CHILD ; 
 int /*<<< orphan*/  INSERT_NEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ContentItem *FUNC10(HHInfo *info, IStream *str, ContentItem *hhc_root,
        insert_type_t *insert_type)
{
    stream_t stream;
    strbuf_t node, node_name;
    ContentItem *ret = NULL, *prev = NULL;

    *insert_type = INSERT_NEXT;

    FUNC7(&node);
    FUNC7(&node_name);

    FUNC9(&stream, str);

    while(FUNC4(&stream, &node)) {
        FUNC2(&node, &node_name);

        FUNC0("%s\n", node.buf);

        if(!FUNC1(node_name.buf, "ul", -1)) {
            ContentItem *item = FUNC5(info, &stream, hhc_root);
            prev = FUNC3(prev, item, INSERT_CHILD);
            if(!ret)
                ret = prev;
            *insert_type = INSERT_CHILD;
        }

        FUNC8(&node);
    }

    FUNC6(&node);
    FUNC6(&node_name);

    return ret;
}