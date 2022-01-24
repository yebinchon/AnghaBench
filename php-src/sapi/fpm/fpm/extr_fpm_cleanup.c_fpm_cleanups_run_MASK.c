#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cleanup_s {int type; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* cleanup ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int used; } ;

/* Variables and functions */
 TYPE_1__ cleanups ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct cleanup_s* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(int type) /* {{{ */
{
	struct cleanup_s *c = FUNC1(&cleanups);
	int cl = cleanups.used;

	for ( ; cl--; c--) {
		if (c->type & type) {
			c->cleanup(type, c->arg);
		}
	}

	FUNC0(&cleanups);
}