#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  T; int /*<<< orphan*/  Z; int /*<<< orphan*/  X; int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ ge_p3 ;
struct TYPE_6__ {int /*<<< orphan*/  T2d; int /*<<< orphan*/  Z; int /*<<< orphan*/  YminusX; int /*<<< orphan*/  YplusX; } ;
typedef  TYPE_2__ ge_cached ;

/* Variables and functions */
 int /*<<< orphan*/  d2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ge_cached *r, const ge_p3 *p)
{
    FUNC0(r->YplusX, p->Y, p->X);
    FUNC3(r->YminusX, p->Y, p->X);
    FUNC1(r->Z, p->Z);
    FUNC2(r->T2d, p->T, d2);
}