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
 int FUNC1 (unsigned char*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,unsigned char**,int) ; 

__attribute__((used)) static int FUNC3(const TEST_CUSTOM_DATA *custom_data,
                            const EXPECTED *expected, size_t expected_size,
                            const TEST_PACKAGE *package)
{
    unsigned char *encoding = NULL;
    /*
     * We force the defaults to be explicitly encoded to make sure we test
     * for defaults that shouldn't be present (i.e. we check for failure)
     */
    size_t encoding_length = FUNC2(custom_data, &encoding, 1);
    int ret;

    if (encoding_length == 0)
        return -1;

    ret = FUNC1(encoding, encoding_length, expected, expected_size,
                    package);
    FUNC0(encoding);

    return ret;
}