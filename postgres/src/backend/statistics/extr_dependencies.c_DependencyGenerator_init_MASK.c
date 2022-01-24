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
struct TYPE_4__ {int k; int n; scalar_t__ current; scalar_t__ ndependencies; int /*<<< orphan*/ * dependencies; } ;
typedef  int /*<<< orphan*/  DependencyGeneratorData ;
typedef  TYPE_1__* DependencyGenerator ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static DependencyGenerator
FUNC4(int n, int k)
{
	DependencyGenerator state;

	FUNC0((n >= k) && (k > 0));

	/* allocate the DependencyGenerator state */
	state = (DependencyGenerator) FUNC3(sizeof(DependencyGeneratorData));
	state->dependencies = (AttrNumber *) FUNC2(k * sizeof(AttrNumber));

	state->ndependencies = 0;
	state->current = 0;
	state->k = k;
	state->n = n;

	/* now actually pre-generate all the variations */
	FUNC1(state);

	return state;
}