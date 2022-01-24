#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* m; int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {void* m; int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_6__ {void* m; int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {void* m; int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  struct matrix4 {TYPE_4__ t; TYPE_3__ z; TYPE_2__ y; TYPE_1__ x; } const matrix4 ;
typedef  void* __m128 ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*,void*) ; 

void FUNC2(struct matrix4 *dst, const struct matrix4 *m)
{
	if (dst == m) {
		struct matrix4 temp = *m;
		FUNC2(dst, &temp);
		return;
	}

#ifdef NO_INTRINSICS
	dst->x.x = m->x.x;
	dst->x.y = m->y.x;
	dst->x.z = m->z.x;
	dst->x.w = m->t.x;
	dst->y.x = m->x.y;
	dst->y.y = m->y.y;
	dst->y.z = m->z.y;
	dst->y.w = m->t.y;
	dst->z.x = m->x.z;
	dst->z.y = m->y.z;
	dst->z.z = m->z.z;
	dst->z.w = m->t.z;
	dst->t.x = m->x.w;
	dst->t.y = m->y.w;
	dst->t.z = m->z.w;
	dst->t.w = m->t.w;
#else
	__m128 a0 = FUNC1(m->x.m, m->z.m);
	__m128 a1 = FUNC1(m->y.m, m->t.m);
	__m128 a2 = FUNC0(m->x.m, m->z.m);
	__m128 a3 = FUNC0(m->y.m, m->t.m);

	dst->x.m = FUNC1(a0, a1);
	dst->y.m = FUNC0(a0, a1);
	dst->z.m = FUNC1(a2, a3);
	dst->t.m = FUNC0(a2, a3);
#endif
}