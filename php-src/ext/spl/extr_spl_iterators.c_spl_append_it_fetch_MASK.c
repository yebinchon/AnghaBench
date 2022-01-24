#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_5__* iterator; } ;
struct TYPE_12__ {TYPE_2__ append; } ;
struct TYPE_13__ {TYPE_3__ u; } ;
typedef  TYPE_4__ spl_dual_it_object ;
struct TYPE_14__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* move_forward ) (TYPE_5__*) ;} ;

/* Variables and functions */
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 

void FUNC4(spl_dual_it_object *intern) /* {{{*/
{
	while (FUNC2(intern) != SUCCESS) {
		intern->u.append.iterator->funcs->move_forward(intern->u.append.iterator);
		if (FUNC0(intern) != SUCCESS) {
			return;
		}
	}
	FUNC1(intern, 0);
}