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
struct vec2 {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec3*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 

void FUNC3(const struct vec2 *v)
{
	struct vec3 v3;

	if (!FUNC0("gs_vertex2v"))
		return;

	FUNC2(&v3, v->x, v->y, 0.0f);
	FUNC1(&v3);
}