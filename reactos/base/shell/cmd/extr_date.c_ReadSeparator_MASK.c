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
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ cDateSeparator ; 

__attribute__((used)) static BOOL
FUNC1 (LPTSTR *s)
{
    if (**s == FUNC0('/') || **s == FUNC0('-') || **s == cDateSeparator)
    {
        (*s)++;
        return TRUE;
    }
    return FALSE;
}