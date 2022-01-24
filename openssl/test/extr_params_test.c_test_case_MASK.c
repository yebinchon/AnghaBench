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
struct TYPE_4__ {int /*<<< orphan*/  prov; TYPE_1__* app; int /*<<< orphan*/  desc; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* constructed_params ) () ;int /*<<< orphan*/  static_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* test_cases ; 

__attribute__((used)) static int FUNC3(int i)
{
    FUNC0("Case: %s", test_cases[i].desc);

    return FUNC2(test_cases[i].app->static_params,
                             test_cases[i].prov)
        && (test_cases[i].app->constructed_params == NULL
            || FUNC2(test_cases[i].app->constructed_params(),
                                 test_cases[i].prov));
}