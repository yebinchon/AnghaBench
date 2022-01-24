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
struct TYPE_5__ {struct TYPE_5__* widths; scalar_t__ font_data; struct TYPE_5__* char_set; } ;
typedef  TYPE_1__* HPDF_Type1FontDefAttr ;
typedef  TYPE_2__* HPDF_FontDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3 (HPDF_FontDef  fontdef)
{
    HPDF_Type1FontDefAttr attr = (HPDF_Type1FontDefAttr)fontdef->attr;

    FUNC1 ((" FreeFunc\n"));

    if (attr->char_set)
        FUNC0 (fontdef->mmgr, attr->char_set);

    if (attr->font_data)
        FUNC2 (attr->font_data);

    FUNC0 (fontdef->mmgr, attr->widths);
    FUNC0 (fontdef->mmgr, attr);
}