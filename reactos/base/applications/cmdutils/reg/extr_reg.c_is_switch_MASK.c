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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char const*) ; 
 char const FUNC1 (char const) ; 

__attribute__((used)) static BOOL FUNC2(const WCHAR *s, const WCHAR c)
{
    if (FUNC0(s) > 2)
        return FALSE;

    if ((s[0] == '/' || s[0] == '-') && (s[1] == c || s[1] == FUNC1(c)))
        return TRUE;

    return FALSE;
}