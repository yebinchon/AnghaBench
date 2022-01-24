#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  attLabelType; int /*<<< orphan*/  attPrefixType; int /*<<< orphan*/  attLeafType; int /*<<< orphan*/  attType; int /*<<< orphan*/  config; } ;
struct TYPE_5__ {int isBuild; int /*<<< orphan*/  myXid; int /*<<< orphan*/  deadTupleStorage; int /*<<< orphan*/  attLabelType; int /*<<< orphan*/  attPrefixType; int /*<<< orphan*/  attLeafType; int /*<<< orphan*/  attType; int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ SpGistState ;
typedef  TYPE_2__ SpGistCache ;
typedef  int /*<<< orphan*/  Relation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SGDTSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(SpGistState *state, Relation index)
{
	SpGistCache *cache;

	/* Get cached static information about index */
	cache = FUNC2(index);

	state->config = cache->config;
	state->attType = cache->attType;
	state->attLeafType = cache->attLeafType;
	state->attPrefixType = cache->attPrefixType;
	state->attLabelType = cache->attLabelType;

	/* Make workspace for constructing dead tuples */
	state->deadTupleStorage = FUNC1(SGDTSIZE);

	/* Set XID to use in redirection tuples */
	state->myXid = FUNC0();

	/* Assume we're not in an index build (spgbuild will override) */
	state->isBuild = false;
}