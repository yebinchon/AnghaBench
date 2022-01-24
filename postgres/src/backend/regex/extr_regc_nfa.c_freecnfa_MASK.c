#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cnfa {scalar_t__ nstates; int /*<<< orphan*/  arcs; int /*<<< orphan*/  states; int /*<<< orphan*/  stflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct cnfa *cnfa)
{
	FUNC1(cnfa->nstates != 0); /* not empty already */
	cnfa->nstates = 0;
	FUNC0(cnfa->stflags);
	FUNC0(cnfa->states);
	FUNC0(cnfa->arcs);
}