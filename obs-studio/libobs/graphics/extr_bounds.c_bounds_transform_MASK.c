#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp ;
struct vec3 {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct matrix4 {int dummy; } ;
struct TYPE_2__ {scalar_t__ x; scalar_t__ y; scalar_t__ z; } ;
struct bounds {TYPE_1__ max; TYPE_1__ min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bounds*,struct bounds*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec3*,struct bounds const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bounds*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC4 (struct vec3*,struct vec3*,struct matrix4 const*) ; 

void FUNC5(struct bounds *dst, const struct bounds *b,
		      const struct matrix4 *m)
{
	struct bounds temp;
	bool b_init = false;
	int i;

	FUNC2(&temp, 0, sizeof(temp));

	for (i = 0; i < 8; i++) {
		struct vec3 p;
		FUNC1(&p, b, i);
		FUNC4(&p, &p, m);

		if (!b_init) {
			FUNC3(&temp.min, &p);
			FUNC3(&temp.max, &p);
			b_init = true;
		} else {
			if (p.x < temp.min.x)
				temp.min.x = p.x;
			else if (p.x > temp.max.x)
				temp.max.x = p.x;

			if (p.y < temp.min.y)
				temp.min.y = p.y;
			else if (p.y > temp.max.y)
				temp.max.y = p.y;

			if (p.z < temp.min.z)
				temp.min.z = p.z;
			else if (p.z > temp.max.z)
				temp.max.z = p.z;
		}
	}

	FUNC0(dst, &temp);
}