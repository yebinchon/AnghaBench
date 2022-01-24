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
struct copy_options {struct copy_options* file; struct copy_options* after_tofrom; struct copy_options* before_tofrom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct copy_options*) ; 

__attribute__((used)) static void
FUNC1(struct copy_options *ptr)
{
	if (!ptr)
		return;
	FUNC0(ptr->before_tofrom);
	FUNC0(ptr->after_tofrom);
	FUNC0(ptr->file);
	FUNC0(ptr);
}