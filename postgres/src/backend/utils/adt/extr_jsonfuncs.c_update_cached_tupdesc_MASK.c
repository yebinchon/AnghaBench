#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_6__ {scalar_t__ tdtypeid; scalar_t__ tdtypmod; } ;
struct TYPE_5__ {scalar_t__ base_typid; scalar_t__ base_typmod; TYPE_3__* tupdesc; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ CompositeIOData ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(CompositeIOData *io, MemoryContext mcxt)
{
	if (!io->tupdesc ||
		io->tupdesc->tdtypeid != io->base_typid ||
		io->tupdesc->tdtypmod != io->base_typmod)
	{
		TupleDesc	tupdesc = FUNC4(io->base_typid,
													 io->base_typmod);
		MemoryContext oldcxt;

		if (io->tupdesc)
			FUNC1(io->tupdesc);

		/* copy tuple desc without constraints into cache memory context */
		oldcxt = FUNC2(mcxt);
		io->tupdesc = FUNC0(tupdesc);
		FUNC2(oldcxt);

		FUNC3(tupdesc);
	}
}