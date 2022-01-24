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
struct TYPE_2__ {int value; } ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  int /*<<< orphan*/  HPDF_Outline ;
typedef  TYPE_1__* HPDF_Number ;
typedef  scalar_t__ HPDF_Dict ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  HPDF_OCLASS_NUMBER ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC6  (HPDF_Dict obj)
{
    HPDF_Number n = (HPDF_Number)FUNC2 (obj, "Count",
                HPDF_OCLASS_NUMBER);
    HPDF_UINT count = FUNC0 ((HPDF_Outline)obj);

    FUNC5((" BeforeWrite\n"));

    if (count == 0 && n)
        return FUNC3 (obj, "Count");

    if (!FUNC4 ((HPDF_Outline)obj))
        count = count * -1;

    if (n)
        n->value = count;
    else
        if (count)
            return FUNC1 (obj, "Count", count);

    return HPDF_OK;
}