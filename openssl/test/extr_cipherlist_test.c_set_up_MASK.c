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
struct TYPE_7__ {char* test_case_name; struct TYPE_7__* client; struct TYPE_7__* server; } ;
typedef  TYPE_1__ CIPHERLIST_TEST_FIXTURE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static CIPHERLIST_TEST_FIXTURE *FUNC6(const char *const test_case_name)
{
    CIPHERLIST_TEST_FIXTURE *fixture;

    if (!FUNC2(fixture = FUNC0(sizeof(*fixture))))
        return NULL;
    fixture->test_case_name = test_case_name;
    if (!FUNC2(fixture->server = FUNC1(FUNC4()))
            || !FUNC2(fixture->client = FUNC1(FUNC3()))) {
        FUNC5(fixture);
        return NULL;
    }
    return fixture;
}