#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_20__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_22__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ strbuf_t ;
typedef  int /*<<< orphan*/  insert_type_t ;
struct TYPE_23__ {int /*<<< orphan*/  chm_file; scalar_t__ chm_index; } ;
struct TYPE_25__ {int /*<<< orphan*/  name; TYPE_20__ merge; int /*<<< orphan*/  child; } ;
struct TYPE_24__ {TYPE_19__* pCHMInfo; } ;
struct TYPE_21__ {int /*<<< orphan*/  codePage; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  TYPE_2__ HHInfo ;
typedef  TYPE_3__ ContentItem ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_19__*,int /*<<< orphan*/ ,TYPE_20__*) ; 
 int /*<<< orphan*/  INSERT_NEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_3__* FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static ContentItem *FUNC15(HHInfo *info, stream_t *stream, ContentItem *hhc_root,
        insert_type_t *insert_type)
{
    strbuf_t node, node_name;
    ContentItem *item;

    *insert_type = INSERT_NEXT;

    FUNC13(&node);
    FUNC13(&node_name);

    item = FUNC8(sizeof(ContentItem));

    while(FUNC9(stream, &node)) {
        FUNC7(&node, &node_name);

        FUNC2("%s\n", node.buf);

        if(!FUNC4(node_name.buf, "/object", -1))
            break;
        if(!FUNC4(node_name.buf, "param", -1))
            FUNC11(item, hhc_root, node.buf, info->pCHMInfo->codePage);

        FUNC14(&node);
    }

    FUNC12(&node);
    FUNC12(&node_name);

    if(item->merge.chm_index) {
        IStream *merge_stream;

        merge_stream = FUNC0(info->pCHMInfo, item->merge.chm_file, &item->merge);
        if(merge_stream) {
            item->child = FUNC10(info, merge_stream, hhc_root, insert_type);
            FUNC1(merge_stream);
        }else {
            FUNC3("Could not get %s::%s stream\n", FUNC5(item->merge.chm_file),
                 FUNC5(item->merge.chm_file));

            if(!item->name) {
                FUNC6(item);
                item = NULL;
            }
        }

    }

    return item;
}