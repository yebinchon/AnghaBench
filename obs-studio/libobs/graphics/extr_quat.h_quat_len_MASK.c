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
struct quat {int dummy; } ;

/* Variables and functions */
 float FUNC0 (struct quat const*,struct quat const*) ; 
 float FUNC1 (float) ; 

__attribute__((used)) static inline float FUNC2(const struct quat *q)
{
	float dot_val = FUNC0(q, q);
	return (dot_val > 0.0f) ? FUNC1(dot_val) : 0.0f;
}