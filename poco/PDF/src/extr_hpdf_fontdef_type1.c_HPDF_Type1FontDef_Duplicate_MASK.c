#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  valid; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  HPDF_MMgr ;
typedef  TYPE_1__* HPDF_FontDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

HPDF_FontDef
FUNC2  (HPDF_MMgr     mmgr,
                              HPDF_FontDef  src)
{
    HPDF_FontDef fontdef = FUNC1 (mmgr);

    FUNC0 ((" HPDF_Type1FontDef_Duplicate\n"));

    fontdef->type = src->type;
    fontdef->valid = src->valid;

    /* copy data of attr,widths
     attention to charset */
    return NULL;
}