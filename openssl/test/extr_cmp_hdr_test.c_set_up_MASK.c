#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* test_case_name; struct TYPE_8__* hdr; struct TYPE_8__* cmp_ctx; } ;
typedef  TYPE_1__ CMP_HDR_TEST_FIXTURE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static CMP_HDR_TEST_FIXTURE *FUNC5(const char *const test_case_name)
{
    CMP_HDR_TEST_FIXTURE *fixture;

    if (!FUNC3(fixture = FUNC0(sizeof(*fixture))))
        return NULL;
    fixture->test_case_name = test_case_name;
    if (!FUNC3(fixture->cmp_ctx = FUNC1()))
        goto err;
    if (!FUNC3(fixture->hdr = FUNC2()))
        goto err;
    return fixture;

 err:
    FUNC4(fixture);
    return NULL;
}