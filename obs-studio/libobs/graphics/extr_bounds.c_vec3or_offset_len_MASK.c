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
struct bounds {int /*<<< orphan*/  min; int /*<<< orphan*/  max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec3*,struct vec3 const*) ; 
 float FUNC1 (struct vec3*,struct vec3*) ; 
 int /*<<< orphan*/  FUNC2 (struct vec3*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline float FUNC3(const struct bounds *b,
				      const struct vec3 *v)
{
	struct vec3 temp1, temp2;
	FUNC2(&temp1, &b->max, &b->min);
	FUNC0(&temp2, v);
	return FUNC1(&temp1, &temp2);
}