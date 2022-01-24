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
struct vec4 {float x; float y; float z; float w; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(obs_data_t *obj, struct vec4 *val)
{
	if (!obj)
		return;

	val->x = (float)FUNC0(obj, "x");
	val->y = (float)FUNC0(obj, "y");
	val->z = (float)FUNC0(obj, "z");
	val->w = (float)FUNC0(obj, "w");
	FUNC1(obj);
}