#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int f_nsyms; } ;
struct r_bin_coff_obj {TYPE_2__* symbols; TYPE_1__ hdr; } ;
struct TYPE_18__ {TYPE_3__* o; } ;
struct TYPE_17__ {int /*<<< orphan*/  ordinal; } ;
struct TYPE_16__ {int /*<<< orphan*/  free; } ;
struct TYPE_15__ {scalar_t__ bin_obj; } ;
struct TYPE_14__ {scalar_t__ n_numaux; } ;
typedef  TYPE_4__ RList ;
typedef  TYPE_5__ RBinImport ;
typedef  TYPE_6__ RBinFile ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct r_bin_coff_obj*,int) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_5__*) ; 
 TYPE_4__* FUNC2 () ; 

__attribute__((used)) static RList *FUNC3(RBinFile *bf) {
	int i;
	RList *ret = NULL;
	struct r_bin_coff_obj *obj = (struct r_bin_coff_obj*)bf->o->bin_obj;
	if (!(ret = FUNC2 ())) {
		return ret;
	}
	ret->free = free;
	if (obj->symbols) {
		int ord = 0;
		for (i = 0; i < obj->hdr.f_nsyms; i++) {
			RBinImport *ptr = FUNC0 (obj, i);
			if (ptr) {
				ptr->ordinal = ord++;
				FUNC1 (ret, ptr);
			}
			i += obj->symbols[i].n_numaux;
		}
	}
	return ret;
}