#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* file; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  TYPE_1__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  (*) (char*)) ; 
 char* FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static RList *FUNC4(RBinFile *bf) {
	return NULL;
#if 0
	char *file = bf->file? strdup (bf->file): strdup ("");
	RList *list = r_list_newf (free);
	// XXX the owner of this list should be the plugin, so we are leaking here
	file = r_str_replace (file, ".class", ".java", 0);
	/*
	   int i;
	   RBinJavaObj *b = bf->o->bin_obj;
	   for (i=0; i<b->lines.count; i++) {
	        RBinDwarfRow *row = R_NEW0(RBinDwarfRow);
	        r_bin_dwarf_line_new (row, b->lines.addr[i], file, b->lines.line[i]);
	        r_list_append (list, row);
	   }*/
	free (file);
	return list;
#endif
}