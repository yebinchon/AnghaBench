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
 float FUNC0 (struct vec2*) ; 
 int /*<<< orphan*/  FUNC1 (struct vec2*,struct vec2 const*,struct vec2 const*) ; 

__attribute__((used)) static inline float FUNC2(const struct vec2 *v1, const struct vec2 *v2)
{
	struct vec2 temp;
	FUNC1(&temp, v1, v2);
	return FUNC0(&temp);
}