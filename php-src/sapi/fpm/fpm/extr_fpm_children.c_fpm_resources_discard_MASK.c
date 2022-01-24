#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fpm_child_s {int /*<<< orphan*/  scoreboard_i; TYPE_1__* wp; } ;
struct TYPE_2__ {int /*<<< orphan*/  scoreboard; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fpm_child_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpm_child_s*) ; 

__attribute__((used)) static void FUNC3(struct fpm_child_s *child) /* {{{ */
{
	FUNC1(child->wp->scoreboard, child->scoreboard_i);
	FUNC2(child);
	FUNC0(child);
}