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
struct TYPE_6__ {int /*<<< orphan*/  isBuild; int /*<<< orphan*/  myXid; } ;
typedef  TYPE_1__ spgxlogState ;
struct TYPE_7__ {int /*<<< orphan*/  deadTupleStorage; int /*<<< orphan*/  isBuild; int /*<<< orphan*/  myXid; } ;
typedef  TYPE_2__ SpGistState ;

/* Variables and functions */
 int /*<<< orphan*/  SGDTSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(SpGistState *state, spgxlogState stateSrc)
{
	FUNC0(state, 0, sizeof(*state));

	state->myXid = stateSrc.myXid;
	state->isBuild = stateSrc.isBuild;
	state->deadTupleStorage = FUNC1(SGDTSIZE);
}