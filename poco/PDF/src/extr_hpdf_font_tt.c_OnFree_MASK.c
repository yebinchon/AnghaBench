#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_5__ {struct TYPE_5__* used; struct TYPE_5__* widths; } ;
typedef  TYPE_1__* HPDF_FontAttr ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2  (HPDF_Dict  obj)
{
    HPDF_FontAttr attr = (HPDF_FontAttr)obj->attr;

    FUNC1 ((" HPDF_TTFont_OnFree\n"));

    if (attr) {
        if (attr->widths) {
            FUNC0 (obj->mmgr, attr->widths);
        }

        if (attr->used) {
            FUNC0 (obj->mmgr, attr->used);
        }

        FUNC0 (obj->mmgr, attr);
    }
}