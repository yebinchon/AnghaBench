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
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int CSTR_EQUAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  NORM_IGNORECASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(LPCWSTR s1, LPCWSTR s2, int n)
{
    n = FUNC2(FUNC2(n, FUNC1(s1)), FUNC1(s2));
    return FUNC0(LOCALE_USER_DEFAULT, NORM_IGNORECASE, s1, n, s2, n) - CSTR_EQUAL;
}