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
struct TYPE_5__ {scalar_t__ donetuples; scalar_t__ tsm_state; } ;
struct TYPE_4__ {scalar_t__ lt; scalar_t__ ntuples; } ;
typedef  TYPE_1__ SystemRowsSamplerData ;
typedef  TYPE_2__ SampleScanState ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ InvalidOffsetNumber ; 

__attribute__((used)) static OffsetNumber
FUNC0(SampleScanState *node,
							BlockNumber blockno,
							OffsetNumber maxoffset)
{
	SystemRowsSamplerData *sampler = (SystemRowsSamplerData *) node->tsm_state;
	OffsetNumber tupoffset = sampler->lt;

	/* Quit if we've returned all needed tuples */
	if (node->donetuples >= sampler->ntuples)
		return InvalidOffsetNumber;

	/* Advance to next possible offset on page */
	if (tupoffset == InvalidOffsetNumber)
		tupoffset = FirstOffsetNumber;
	else
		tupoffset++;

	/* Done? */
	if (tupoffset > maxoffset)
		tupoffset = InvalidOffsetNumber;

	sampler->lt = tupoffset;

	return tupoffset;
}