#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fields_size; int types_size; } ;
struct TYPE_10__ {TYPE_3__* types; TYPE_2__* fields; TYPE_1__ header; } ;
struct TYPE_9__ {int descriptor_id; } ;
struct TYPE_8__ {int class_id; int type_id; int name_id; } ;
typedef  TYPE_4__ RBinDexObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,...) ; 
 scalar_t__ simplifiedDemangling ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(RBinDexObj *bin, int fid) {
	int cid, tid, type_id;
	FUNC2 (bin && bin->fields, NULL);

	if (fid < 0 || fid >= bin->header.fields_size) {
		return NULL;
	}
	cid = bin->fields[fid].class_id;
	if (cid < 0 || cid >= bin->header.types_size) {
		return NULL;
	}
	type_id = bin->fields[fid].type_id;
	if (type_id < 0 || type_id >= bin->header.types_size) {
		return NULL;
	}
	tid = bin->fields[fid].name_id;
	const char *a = FUNC1 (bin, bin->types[cid].descriptor_id);
	const char *b = FUNC1 (bin, tid);
	const char *c = FUNC1 (bin, bin->types[type_id].descriptor_id);
	if (simplifiedDemangling) {
		if (a && b && c) {
			char *_a = FUNC4(FUNC5 (a));
			char *_b = FUNC4(FUNC5 (b));
			char *_c = FUNC4(FUNC5 (c));
			char *str =  FUNC3 ("(%s) %s.%s", _c, _a, _b);
			FUNC0 (_a);
			FUNC0 (_b);
			FUNC0 (_c);
			return str;
		}
		return FUNC3 ("(%d) %d.%d",
				bin->types[type_id].descriptor_id,
				tid,
				bin->types[cid].descriptor_id
			     );
	}
	return (a && b && c)
		? FUNC3 ("%s->%s %s", a, b, c)
		: FUNC3 ("%d->%d %d", bin->types[cid].descriptor_id, tid, bin->types[type_id].descriptor_id);
}