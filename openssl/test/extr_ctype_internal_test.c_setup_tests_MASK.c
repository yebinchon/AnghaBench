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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  case_change ; 
 int /*<<< orphan*/  test_ctype_chars ; 
 int /*<<< orphan*/  test_ctype_eof ; 
 int /*<<< orphan*/  test_ctype_tolower ; 
 int /*<<< orphan*/  test_ctype_toupper ; 

int FUNC3(void)
{
    FUNC0(test_ctype_chars, 256);
    FUNC0(test_ctype_toupper, FUNC2(case_change));
    FUNC0(test_ctype_tolower, FUNC2(case_change));
    FUNC1(test_ctype_eof);
    return 1;
}