#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* ctx2; struct TYPE_9__* prov2; struct TYPE_9__* ctx1; struct TYPE_9__* prov1; } ;
typedef  TYPE_1__ FIXTURE ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static FIXTURE *FUNC5(const char *testcase_name)
{
    FIXTURE *fixture;

    if (!FUNC3(fixture = FUNC1(sizeof(*fixture)))
        || !FUNC3(fixture->ctx1 = FUNC0())
        || !FUNC3(fixture->prov1 = FUNC2(fixture->ctx1,
                                                         "default"))
        || !FUNC3(fixture->ctx2 = FUNC0())
        || !FUNC3(fixture->prov2 = FUNC2(fixture->ctx2,
                                                         "default"))) {
        FUNC4(fixture);
        return NULL;
    }
    return fixture;
}