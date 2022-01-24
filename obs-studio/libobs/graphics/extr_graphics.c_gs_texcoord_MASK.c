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
struct vec2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec2*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec2*,float,float) ; 

void FUNC3(float x, float y, int unit)
{
	struct vec2 v2;

	if (!FUNC1("gs_texcoord"))
		return;

	FUNC2(&v2, x, y);
	FUNC0(&v2, unit);
}