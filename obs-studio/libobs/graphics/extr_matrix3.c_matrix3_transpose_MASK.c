#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* m; } ;
struct TYPE_5__ {void* m; } ;
struct TYPE_4__ {void* m; } ;
struct matrix3 {TYPE_3__ z; TYPE_2__ y; TYPE_1__ x; int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  __m128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct matrix3 const*) ; 

void FUNC6(struct matrix3 *dst, const struct matrix3 *m)
{
	__m128 tmp1, tmp2;
	FUNC5(&dst->t, &m->t, m);
	FUNC4(&dst->t, &dst->t);

	tmp1 = FUNC2(m->x.m, m->y.m);
	tmp2 = FUNC1(m->y.m, m->x.m);
	dst->x.m = FUNC3(tmp1, m->z.m, FUNC0(3, 0, 2, 0));
	dst->y.m = FUNC3(tmp1, m->z.m, FUNC0(3, 1, 3, 1));
	dst->z.m = FUNC3(tmp2, m->z.m, FUNC0(3, 2, 2, 0));
}