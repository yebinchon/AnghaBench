#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* test_section; TYPE_1__* expected_ctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  expected_result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SSL_TEST_SUCCESS ; 
 TYPE_2__* fixture ; 
 int result ; 

__attribute__((used)) static int FUNC2(void)
{
    FUNC1();
    if (fixture == NULL)
        return 0;
    fixture->test_section = "ssltest_default";
    fixture->expected_ctx->expected_result = SSL_TEST_SUCCESS;
    FUNC0();
    return result;
}