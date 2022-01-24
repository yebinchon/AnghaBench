#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * obj; scalar_t__ count; scalar_t__ block_siz; int /*<<< orphan*/  mmgr; } ;
typedef  TYPE_1__* HPDF_List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2  (HPDF_List  list)
{
    FUNC1((" HPDF_List_Clear\n"));

    if (list->obj)
        FUNC0 (list->mmgr, list->obj);

    list->block_siz = 0;
    list->count = 0;
    list->obj = NULL;
}