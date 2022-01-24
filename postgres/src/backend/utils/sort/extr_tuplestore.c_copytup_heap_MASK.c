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
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  scalar_t__ MinimalTuple ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC3(Tuplestorestate *state, void *tup)
{
	MinimalTuple tuple;

	tuple = FUNC2((HeapTuple) tup);
	FUNC1(state, FUNC0(tuple));
	return (void *) tuple;
}