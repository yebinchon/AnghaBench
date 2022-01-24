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
struct TYPE_2__ {int /*<<< orphan*/  sThousand; void* sThousand_len; int /*<<< orphan*/  sDecimal; void* sDecimal_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCALE_SDECIMAL ; 
 int /*<<< orphan*/  LOCALE_STHOUSAND ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ calc ; 

__attribute__((used)) static void FUNC5(void)
{
    /* Get current user defaults */
    if (!FUNC0(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, calc.sDecimal, FUNC1(calc.sDecimal)))
        FUNC3(calc.sDecimal, FUNC2("."));

    if (!FUNC0(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, calc.sThousand, FUNC1(calc.sThousand)))
        FUNC3(calc.sThousand, FUNC2(","));

    /* get the string lengths */
    calc.sDecimal_len = FUNC4(calc.sDecimal);
    calc.sThousand_len = FUNC4(calc.sThousand);
}