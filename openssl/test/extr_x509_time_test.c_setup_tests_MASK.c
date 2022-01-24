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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  day_of_week_tests ; 
 int /*<<< orphan*/  test_days ; 
 int /*<<< orphan*/  test_x509_cmp_time ; 
 int /*<<< orphan*/  test_x509_cmp_time_current ; 
 int /*<<< orphan*/  test_x509_time ; 
 int /*<<< orphan*/  test_x509_time_print ; 
 int /*<<< orphan*/  x509_cmp_tests ; 
 int /*<<< orphan*/  x509_format_tests ; 
 int /*<<< orphan*/  x509_print_tests ; 

int FUNC3(void)
{
    FUNC1(test_x509_cmp_time_current);
    FUNC0(test_x509_cmp_time, FUNC2(x509_cmp_tests));
    FUNC0(test_x509_time, FUNC2(x509_format_tests));
    FUNC0(test_days, FUNC2(day_of_week_tests));
    FUNC0(test_x509_time_print, FUNC2(x509_print_tests));
    return 1;
}