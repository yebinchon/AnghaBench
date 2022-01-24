#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  HPDF_Outline ;
typedef  TYPE_1__* HPDF_Number ;
typedef  int /*<<< orphan*/  HPDF_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_FALSE ; 
 int /*<<< orphan*/  HPDF_OCLASS_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

HPDF_BOOL
FUNC2  (HPDF_Outline  outline)
{
    HPDF_Number n = (HPDF_Number)FUNC0 (outline, "_OPENED",
                        HPDF_OCLASS_NUMBER);

    FUNC1((" HPDF_Outline_GetOpened\n"));

    if (!n)
        return HPDF_FALSE;

    return (HPDF_BOOL)n->value;
}