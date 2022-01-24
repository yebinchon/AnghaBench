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
struct slabinfo {char* name; int /*<<< orphan*/ * numa_partial; int /*<<< orphan*/ * numa; int /*<<< orphan*/  slabs; } ;

/* Variables and functions */
 int highest_node ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ skip_zero ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(struct slabinfo *s, int mode)
{
	int node;

	if (FUNC2(s->name, "*") == 0)
		return;

	if (!highest_node) {
		FUNC0("\n%s: No NUMA information available.\n", s->name);
		return;
	}

	if (skip_zero && !s->slabs)
		return;

	if (!line) {
		FUNC0("\n%-21s:", mode ? "NUMA nodes" : "Slab");
		for(node = 0; node <= highest_node; node++)
			FUNC0(" %4d", node);
		FUNC0("\n----------------------");
		for(node = 0; node <= highest_node; node++)
			FUNC0("-----");
		FUNC0("\n");
	}
	FUNC0("%-21s ", mode ? "All slabs" : s->name);
	for(node = 0; node <= highest_node; node++) {
		char b[20];

		FUNC1(b, s->numa[node]);
		FUNC0(" %4s", b);
	}
	FUNC0("\n");
	if (mode) {
		FUNC0("%-21s ", "Partial slabs");
		for(node = 0; node <= highest_node; node++) {
			char b[20];

			FUNC1(b, s->numa_partial[node]);
			FUNC0(" %4s", b);
		}
		FUNC0("\n");
	}
	line++;
}