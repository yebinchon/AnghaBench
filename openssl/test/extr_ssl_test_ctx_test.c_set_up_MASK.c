#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* test_case_name; struct TYPE_7__* expected_ctx; } ;
typedef  TYPE_1__ SSL_TEST_CTX_TEST_FIXTURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static SSL_TEST_CTX_TEST_FIXTURE *FUNC4(const char *const test_case_name)
{
    SSL_TEST_CTX_TEST_FIXTURE *fixture;

    if (!FUNC3(fixture = FUNC1(sizeof(*fixture))))
        return NULL;
    fixture->test_case_name = test_case_name;
    if (!FUNC3(fixture->expected_ctx = FUNC2())) {
        FUNC0(fixture);
        return NULL;
    }
    return fixture;
}