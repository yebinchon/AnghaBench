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
typedef  int* PWSTR ;
typedef  int* PWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static
BOOL
FUNC1(
    PWSTR *s,
    PWORD pwValue)
{
    if (!FUNC0(**s))
        return FALSE;

    while (FUNC0(**s))
    {
        *pwValue = *pwValue * 10 + **s - L'0';
        (*s)++;
    }

    return TRUE;
}