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
struct vec3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec3*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,float,float,float) ; 

void FUNC3(float x, float y, float z)
{
	struct vec3 v3;

	if (!FUNC1("gs_normal3f"))
		return;

	FUNC2(&v3, x, y, z);
	FUNC0(&v3);
}