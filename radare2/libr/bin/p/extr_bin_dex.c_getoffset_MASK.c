#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int strings_size; } ;
struct r_bin_dex_obj_t {int* strings; TYPE_2__ header; } ;
struct TYPE_9__ {TYPE_1__* o; } ;
struct TYPE_7__ {struct r_bin_dex_obj_t* bin_obj; } ;
typedef  TYPE_3__ RBinFile ;

/* Variables and functions */
 int FUNC0 (struct r_bin_dex_obj_t*,int) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_3__*,struct r_bin_dex_obj_t*,int) ; 

__attribute__((used)) static int FUNC4(RBinFile *bf, int type, int idx) {
	struct r_bin_dex_obj_t *dex = bf->o->bin_obj;
	switch (type) {
	case 'm': // methods
		// TODO: ADD CHECK
		return FUNC3 (bf, dex, idx);
	case 'f':
		return FUNC0 (dex, idx);
	case 'o': // objects
		FUNC2 ("TODO: getoffset object\n");
		return 0; // //chdex_object_offset (dex, idx);
	case 's': // strings
		if (dex->header.strings_size > idx) {
			if (dex->strings) {
				return dex->strings[idx];
			}
		}
		break;
	case 't': // type
		return FUNC1 (bf, idx);
	case 'c': // class
		return FUNC1 (bf, idx);
	}
	return -1;
}