#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ success; } ;
struct TYPE_6__ {int (* i2d ) (TYPE_2__*,unsigned char**) ;} ;
typedef  TYPE_1__ TEST_PACKAGE ;
typedef  TYPE_2__ EXPECTED ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char const*,size_t) ; 
 int FUNC3 (TYPE_2__*,unsigned char**) ; 

__attribute__((used)) static int FUNC4(EXPECTED *input,
                     const unsigned char *expected, size_t expected_len,
                     const TEST_PACKAGE *package)
{
    unsigned char *data = NULL;
    int len;
    int ret = 0;

    len = package->i2d(input, &data);
    if (len < 0)
        return -1;

    if ((size_t)len != expected_len
        || FUNC2(data, expected, expected_len) != 0) {
        if (input->success == 0) {
            ret = 1;
            FUNC0();
        } else {
            ret = 0;
        }
    } else {
        ret = 1;
    }

    FUNC1(data);
    return ret;
}