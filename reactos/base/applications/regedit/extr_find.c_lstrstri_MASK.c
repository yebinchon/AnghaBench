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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  NORM_IGNORECASE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static LPWSTR FUNC2(LPCWSTR psz1, LPCWSTR psz2)
{
    INT i, cch1, cch2;

    cch1 = FUNC1(psz1);
    cch2 = FUNC1(psz2);
    for(i = 0; i <= cch1 - cch2; i++)
    {
        if (FUNC0(LOCALE_SYSTEM_DEFAULT, NORM_IGNORECASE,
                           psz1 + i, cch2, psz2, cch2) == 2)
            return (LPWSTR) (psz1 + i);
    }
    return NULL;
}