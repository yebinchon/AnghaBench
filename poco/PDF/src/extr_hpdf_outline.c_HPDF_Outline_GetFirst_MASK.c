#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HPDF_Outline ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_DICT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

HPDF_Outline
FUNC2  (HPDF_Outline outline)
{
    FUNC1((" HPDF_Outline_GetFirst\n"));

    return (HPDF_Outline)FUNC0 (outline, "First",
                    HPDF_OCLASS_DICT);
}