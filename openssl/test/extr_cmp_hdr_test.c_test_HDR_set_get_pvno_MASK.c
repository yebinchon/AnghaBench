#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int expected; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_HDR_TEST_FIXTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  execute_HDR_set_get_pvno_test ; 
 TYPE_1__* fixture ; 
 int result ; 
 int /*<<< orphan*/  set_up ; 
 int /*<<< orphan*/  tear_down ; 

__attribute__((used)) static int FUNC2(void)
{
    FUNC1(CMP_HDR_TEST_FIXTURE, set_up);
    fixture->expected = 1;
    FUNC0(execute_HDR_set_get_pvno_test, tear_down);
    return result;
}