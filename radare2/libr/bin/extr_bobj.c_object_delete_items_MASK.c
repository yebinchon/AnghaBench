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
typedef  size_t ut32 ;
struct TYPE_4__ {int /*<<< orphan*/ * binsym; int /*<<< orphan*/  mem; int /*<<< orphan*/  kv; int /*<<< orphan*/  lines; int /*<<< orphan*/  methods_ht; int /*<<< orphan*/  classes_ht; int /*<<< orphan*/  classes; int /*<<< orphan*/  symbols; int /*<<< orphan*/  strings_db; int /*<<< orphan*/  strings; int /*<<< orphan*/  sections; int /*<<< orphan*/  relocs; int /*<<< orphan*/  libs; int /*<<< orphan*/  imports; int /*<<< orphan*/  fields; int /*<<< orphan*/  entries; int /*<<< orphan*/  addr2klassmethod; } ;
typedef  TYPE_1__ RBinObject ;

/* Variables and functions */
 size_t R_BIN_SYM_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  reloc_free ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(RBinObject *o) {
	ut32 i = 0;
	FUNC5 (o);
	FUNC6 (o->addr2klassmethod);
	FUNC3 (o->entries);
	FUNC3 (o->fields);
	FUNC3 (o->imports);
	FUNC3 (o->libs);
	FUNC4 (o->relocs, reloc_free);
	FUNC3 (o->sections);
	FUNC3 (o->strings);
	FUNC2 (o->strings_db);
	FUNC3 (o->symbols);
	FUNC3 (o->classes);
	FUNC1 (o->classes_ht);
	FUNC1 (o->methods_ht);
	FUNC3 (o->lines);
	FUNC6 (o->kv);
	FUNC3 (o->mem);
	for (i = 0; i < R_BIN_SYM_LAST; i++) {
		FUNC0 (o->binsym[i]);
	}
}