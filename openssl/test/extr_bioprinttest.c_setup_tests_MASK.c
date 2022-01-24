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
typedef  int OPTION_CHOICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int OPT_EOF ; 
#define  OPT_PRINT 129 
#define  OPT_TEST_CASES 128 
 int /*<<< orphan*/  jf_data ; 
 int justprint ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  pw_params ; 
 int /*<<< orphan*/  test_big ; 
 int /*<<< orphan*/  test_fp ; 
 int /*<<< orphan*/  test_j ; 
 int /*<<< orphan*/  test_zu ; 
 int /*<<< orphan*/  zu_data ; 

int FUNC4(void)
{
    OPTION_CHOICE o;

    while ((o = FUNC3()) != OPT_EOF) {
        switch (o) {
        case OPT_PRINT:
            justprint = 1;
            break;
        case OPT_TEST_CASES:
            break;
        default:
            return 0;
        }
    }

    FUNC1(test_big);
    FUNC0(test_fp, FUNC2(pw_params));
    FUNC0(test_zu, FUNC2(zu_data));
    FUNC0(test_j, FUNC2(jf_data));
    return 1;
}