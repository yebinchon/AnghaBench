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
struct plane {float dist; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 float FUNC0 (struct vec3 const*,int /*<<< orphan*/ *) ; 

float FUNC1(const struct vec3 *v, const struct plane *p)
{
	return FUNC0(v, &p->dir) - p->dist;
}