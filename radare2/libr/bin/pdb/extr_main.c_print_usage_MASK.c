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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1() {
	FUNC0("pdb_parser -f pdb_file [option]\n");
	FUNC0("\t -f, --pdb_file : set pdb file to parse\n");
	FUNC0("[option]:\n");
	FUNC0("\t -t, --print_types : print all types parsed in pdb file\n");
	FUNC0("\t -g, --print_globals : print all globals functions/variables parsed in pdb file\n");
}