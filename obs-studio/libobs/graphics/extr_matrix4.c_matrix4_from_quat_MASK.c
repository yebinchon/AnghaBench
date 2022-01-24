#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct quat {float x; float y; float z; float w; } ;
struct matrix4 {int /*<<< orphan*/  t; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 float FUNC0 (struct quat const*,struct quat const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,float,float,float) ; 

void FUNC2(struct matrix4 *dst, const struct quat *q)
{
	float norm = FUNC0(q, q);
	float s = (norm > 0.0f) ? (2.0f / norm) : 0.0f;

	float xx = q->x * q->x * s;
	float yy = q->y * q->y * s;
	float zz = q->z * q->z * s;
	float xy = q->x * q->y * s;
	float xz = q->x * q->z * s;
	float yz = q->y * q->z * s;
	float wx = q->w * q->x * s;
	float wy = q->w * q->y * s;
	float wz = q->w * q->z * s;

	FUNC1(&dst->x, 1.0f - (yy + zz), xy + wz, xz - wy, 0.0f);
	FUNC1(&dst->y, xy - wz, 1.0f - (xx + zz), yz + wx, 0.0f);
	FUNC1(&dst->z, xz + wy, yz - wx, 1.0f - (xx + yy), 0.0f);
	FUNC1(&dst->t, 0.0f, 0.0f, 0.0f, 1.0f);
}