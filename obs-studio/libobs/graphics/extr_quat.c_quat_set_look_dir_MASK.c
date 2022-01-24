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
struct vec3 {int /*<<< orphan*/  y; int /*<<< orphan*/  z; int /*<<< orphan*/  x; } ;
struct quat {int dummy; } ;
struct axisang {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPSILON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct axisang*,float,float,float,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct quat*,struct quat*) ; 
 int /*<<< orphan*/  FUNC5 (struct quat*,struct axisang*) ; 
 int /*<<< orphan*/  FUNC6 (struct quat*) ; 
 int /*<<< orphan*/  FUNC7 (struct quat*,struct quat*,struct quat*) ; 
 int /*<<< orphan*/  FUNC8 (struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC9 (struct vec3*,struct vec3 const*) ; 

void FUNC10(struct quat *dst, const struct vec3 *dir)
{
	struct vec3 new_dir;
	struct quat xz_rot, yz_rot;
	bool xz_valid;
	bool yz_valid;
	struct axisang aa;

	FUNC9(&new_dir, dir);
	FUNC8(&new_dir, &new_dir);

	FUNC6(&xz_rot);
	FUNC6(&yz_rot);

	xz_valid = FUNC3(new_dir.x, 0.0f, EPSILON) ||
		   FUNC3(new_dir.z, 0.0f, EPSILON);
	yz_valid = FUNC3(new_dir.y, 0.0f, EPSILON);

	if (xz_valid) {
		FUNC2(&aa, 0.0f, 1.0f, 0.0f,
			    FUNC1(new_dir.x, new_dir.z));

		FUNC5(&xz_rot, &aa);
	}
	if (yz_valid) {
		FUNC2(&aa, -1.0f, 0.0f, 0.0f, FUNC0(new_dir.y));
		FUNC5(&yz_rot, &aa);
	}

	if (!xz_valid)
		FUNC4(dst, &yz_rot);
	else if (!yz_valid)
		FUNC4(dst, &xz_rot);
	else
		FUNC7(dst, &xz_rot, &yz_rot);
}