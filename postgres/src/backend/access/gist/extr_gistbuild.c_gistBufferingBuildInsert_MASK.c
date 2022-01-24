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
struct TYPE_7__ {TYPE_1__* gfbb; } ;
struct TYPE_6__ {int /*<<< orphan*/  rootlevel; } ;
typedef  int /*<<< orphan*/  IndexTuple ;
typedef  TYPE_2__ GISTBuildState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(GISTBuildState *buildstate, IndexTuple itup)
{
	/* Insert the tuple to buffers. */
	FUNC1(buildstate, itup, 0, buildstate->gfbb->rootlevel);

	/* If we filled up (half of a) buffer, process buffer emptying. */
	FUNC0(buildstate);
}