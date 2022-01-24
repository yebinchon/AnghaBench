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
typedef  int /*<<< orphan*/  ULONG ;
typedef  size_t UINT ;
typedef  int* LPWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int**,int) ; 

__attribute__((used)) static ULONG
FUNC2(LPWSTR String)
{
    UINT i, Length;
    ULONG Value;
    LPWSTR StopString;

    i = 0;
    /* Get the string length */
    Length = (UINT)FUNC0(String);

    /* Check the string only consists of numbers */
    while ((i < Length) && ((String[i] < L'0') || (String[i] > L'9'))) i++;
    if ((i >= Length) || ((String[i] < L'0') || (String[i] > L'9')))
    {
        return (ULONG)-1;
    }

    /* Convert it */
    Value = FUNC1(&String[i], &StopString, 10);

    return Value;
}