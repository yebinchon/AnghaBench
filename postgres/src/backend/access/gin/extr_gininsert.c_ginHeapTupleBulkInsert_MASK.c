#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_5__ {int /*<<< orphan*/  ginstate; } ;
struct TYPE_4__ {int /*<<< orphan*/  funcCtx; int /*<<< orphan*/  indtuples; TYPE_2__ accum; } ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  TYPE_1__ GinBuildState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(GinBuildState *buildstate, OffsetNumber attnum,
					   Datum value, bool isNull,
					   ItemPointer heapptr)
{
	Datum	   *entries;
	GinNullCategory *categories;
	int32		nentries;
	MemoryContext oldCtx;

	oldCtx = FUNC1(buildstate->funcCtx);
	entries = FUNC2(buildstate->accum.ginstate, attnum,
								value, isNull,
								&nentries, &categories);
	FUNC1(oldCtx);

	FUNC3(&buildstate->accum, heapptr, attnum,
					   entries, categories, nentries);

	buildstate->indtuples += nentries;

	FUNC0(buildstate->funcCtx);
}