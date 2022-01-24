#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  relids; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_2__ Path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Relids
FUNC4(Path *outer_path, Path *inner_path)
{
	Relids		outer_paramrels = FUNC1(outer_path);
	Relids		inner_paramrels = FUNC1(inner_path);
	Relids		required_outer;

	/* neither path can require rels from the other */
	FUNC0(!FUNC2(outer_paramrels, inner_path->parent->relids));
	FUNC0(!FUNC2(inner_paramrels, outer_path->parent->relids));
	/* form the union ... */
	required_outer = FUNC3(outer_paramrels, inner_paramrels);
	/* we do not need an explicit test for empty; bms_union gets it right */
	return required_outer;
}