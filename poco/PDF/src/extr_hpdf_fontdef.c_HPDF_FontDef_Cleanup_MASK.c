#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * descriptor; int /*<<< orphan*/  (* clean_fn ) (TYPE_1__*) ;} ;
typedef  TYPE_1__* HPDF_FontDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2 (HPDF_FontDef  fontdef)
{
    if (!fontdef)
        return;

    FUNC0 ((" HPDF_FontDef_Cleanup\n"));

    if (fontdef->clean_fn)
        fontdef->clean_fn (fontdef);

    fontdef->descriptor = NULL;
}