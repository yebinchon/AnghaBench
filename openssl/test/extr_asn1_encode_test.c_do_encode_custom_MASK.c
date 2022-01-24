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
typedef  int /*<<< orphan*/  TEST_PACKAGE ;
typedef  int /*<<< orphan*/  TEST_CUSTOM_DATA ;
typedef  int /*<<< orphan*/  EXPECTED ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,unsigned char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(EXPECTED *input,
                            const TEST_CUSTOM_DATA *custom_data,
                            const TEST_PACKAGE *package)
{
    unsigned char *expected = NULL;
    size_t expected_length = FUNC2(custom_data, &expected, 0);
    int ret;

    if (expected_length == 0)
        return -1;

    ret = FUNC1(input, expected, expected_length, package);
    FUNC0(expected);

    return ret;
}