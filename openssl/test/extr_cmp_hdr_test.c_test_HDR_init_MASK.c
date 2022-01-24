#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ref ;
struct TYPE_4__ {int expected; int /*<<< orphan*/  cmp_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_HDR_TEST_FIXTURE ; 
 int CMP_TEST_REFVALUE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_1__*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  execute_HDR_init_test ; 
 TYPE_1__* fixture ; 
 int result ; 
 int /*<<< orphan*/  set_up ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(void)
{
    FUNC3(CMP_HDR_TEST_FIXTURE, set_up);
    unsigned char ref[CMP_TEST_REFVALUE_LENGTH];

    fixture->expected = 1;
    if (!FUNC4(1, FUNC2(ref, sizeof(ref)))
            || !FUNC5(FUNC1(fixture->cmp_ctx,
                                                           ref, sizeof(ref)))) {
        FUNC6(fixture);
        fixture = NULL;
    }
    FUNC0(execute_HDR_init_test, tear_down);
    return result;
}