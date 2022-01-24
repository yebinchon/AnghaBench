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
typedef  TYPE_1__* niels_t ;
typedef  TYPE_2__* curve448_point_t ;
struct TYPE_6__ {int /*<<< orphan*/  z; int /*<<< orphan*/  x; int /*<<< orphan*/  y; int /*<<< orphan*/  t; } ;
struct TYPE_5__ {int /*<<< orphan*/  a; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  ONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(curve448_point_t e, const niels_t n)
{
    FUNC0(e->y, n->b, n->a);
    FUNC3(e->x, n->b, n->a);
    FUNC2(e->t, e->y, e->x);
    FUNC1(e->z, ONE);
}