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
struct bounds {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bounds const*,struct vec3 const*,struct vec3 const*,float*) ; 

__attribute__((used)) static inline bool FUNC1(const struct bounds *b,
					  const struct vec3 *p1,
					  const struct vec3 *p2)
{
	float t;
	return FUNC0(b, p1, p2, &t);
}