#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ count; } ;
struct TYPE_9__ {scalar_t__ obj_class; } ;
struct TYPE_10__ {int /*<<< orphan*/  mmgr; TYPE_1__ header; TYPE_5__* list; scalar_t__ stream; int /*<<< orphan*/  value; int /*<<< orphan*/  (* free_fn ) (TYPE_2__*) ;} ;
typedef  scalar_t__ HPDF_UINT ;
typedef  TYPE_2__* HPDF_DictElement ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void
FUNC6  (HPDF_Dict  dict)
{
    HPDF_UINT i;

    if (!dict)
        return;

    if (dict->free_fn)
        dict->free_fn (dict);

    for (i = 0; i < dict->list->count; i++) {
        HPDF_DictElement element =
                (HPDF_DictElement)FUNC2 (dict->list, i);

        if (element) {
            FUNC3 (dict->mmgr, element->value);
            FUNC0 (dict->mmgr, element);
        }
    }

    if (dict->stream)
        FUNC4 (dict->stream);

    FUNC1 (dict->list);

    dict->header.obj_class = 0;

    FUNC0 (dict->mmgr, dict);
}