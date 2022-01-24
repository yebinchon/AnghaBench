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
struct TYPE_4__ {int /*<<< orphan*/  ctx2; int /*<<< orphan*/  ctx1; int /*<<< orphan*/  prov2; int /*<<< orphan*/  prov1; } ;
typedef  TYPE_1__ FIXTURE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FIXTURE *fixture)
{
    if (fixture != NULL) {
        FUNC2(fixture->prov1);
        FUNC2(fixture->prov2);
        FUNC0(fixture->ctx1);
        FUNC0(fixture->ctx2);
        FUNC1(fixture);
    }
}