#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int super_class; } ;
struct TYPE_8__ {int types_size; } ;
struct TYPE_10__ {TYPE_2__* types; TYPE_1__ header; } ;
struct TYPE_9__ {int descriptor_id; } ;
typedef  TYPE_3__ RBinDexObj ;
typedef  TYPE_4__ RBinDexClass ;

/* Variables and functions */
 char const* FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC2(RBinDexObj *bin, RBinDexClass *c) {
	FUNC1 (bin && bin->types && c, NULL);

	int cid = c->super_class;
	if (cid < 0 || cid >= bin->header.types_size) {
		return NULL;
	}
	int tid = bin->types[cid].descriptor_id;
	return FUNC0 (bin, tid);
}