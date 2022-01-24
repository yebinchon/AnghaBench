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
struct matrix3 {int /*<<< orphan*/  t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vec3 const*) ; 

__attribute__((used)) static inline void FUNC1(struct matrix3 *dst,
				     const struct matrix3 *m,
				     const struct vec3 *v)
{
	FUNC0(&dst->t, &m->t, v);
}