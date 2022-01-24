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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct tm* FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  tbl_compare_testdata ; 
 int /*<<< orphan*/  tbl_testdata_neg ; 
 int /*<<< orphan*/  tbl_testdata_neg_64bit ; 
 int /*<<< orphan*/  tbl_testdata_pos ; 
 int /*<<< orphan*/  tbl_testdata_pos_64bit ; 
 int /*<<< orphan*/  test_table_compare ; 
 int /*<<< orphan*/  test_table_neg ; 
 int /*<<< orphan*/  test_table_neg_64bit ; 
 int /*<<< orphan*/  test_table_pos ; 
 int /*<<< orphan*/  test_table_pos_64bit ; 

int FUNC4(void)
{
    /*
     * On platforms where |time_t| is an unsigned integer, t will be a
     * positive number.
     *
     * We check if we're on a platform with a signed |time_t| with '!(t > 0)'
     * because some compilers are picky if you do 't < 0', or even 't <= 0'
     * if |t| is unsigned.
     */
    time_t t = -1;
    /*
     * On some platforms, |time_t| is signed, but a negative value is an
     * error, and using it with gmtime() or localtime() generates a NULL.
     * If that is the case, we can't perform tests on negative values.
     */
    struct tm *ptm = FUNC3(&t);

    FUNC0(test_table_pos, FUNC1(tbl_testdata_pos));
    if (!(t > 0) && ptm != NULL) {
        FUNC2("Adding negative-sign time_t tests");
        FUNC0(test_table_neg, FUNC1(tbl_testdata_neg));
    }
    if (sizeof(time_t) > sizeof(uint32_t)) {
        FUNC2("Adding 64-bit time_t tests");
        FUNC0(test_table_pos_64bit, FUNC1(tbl_testdata_pos_64bit));
#ifndef __hpux
        if (!(t > 0) && ptm != NULL) {
            FUNC2("Adding negative-sign 64-bit time_t tests");
            FUNC0(test_table_neg_64bit, FUNC1(tbl_testdata_neg_64bit));
        }
#endif
    }
    FUNC0(test_table_compare, FUNC1(tbl_compare_testdata));
    return 1;
}