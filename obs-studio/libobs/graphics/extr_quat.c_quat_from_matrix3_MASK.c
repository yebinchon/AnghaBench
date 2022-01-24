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
struct matrix4 {int dummy; } ;
struct matrix3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quat*,struct matrix4 const*) ; 

void FUNC1(struct quat *dst, const struct matrix3 *m)
{
	FUNC0(dst, (const struct matrix4 *)m);
}