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
struct TYPE_5__ {scalar_t__ gstate; } ;
typedef  TYPE_1__* HPDF_PageAttr ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3  (HPDF_Dict  obj)
{
    HPDF_PageAttr attr = (HPDF_PageAttr)obj->attr;

    FUNC2((" HPDF_Page_OnFree\n"));

    if (attr) {
        if (attr->gstate)
            FUNC1 (obj->mmgr, attr->gstate);

        FUNC0 (obj->mmgr, attr);
    }
}