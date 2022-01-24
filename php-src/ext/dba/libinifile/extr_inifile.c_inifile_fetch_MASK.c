#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* value; } ;
typedef  TYPE_3__ val_type ;
struct TYPE_17__ {char* group; scalar_t__ name; } ;
struct TYPE_13__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_15__ {TYPE_3__ val; void* pos; TYPE_9__ key; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef  TYPE_4__ line_type ;
typedef  int /*<<< orphan*/  key_type ;
struct TYPE_16__ {int /*<<< orphan*/  fp; TYPE_4__ next; } ;
typedef  TYPE_5__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (TYPE_9__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

val_type FUNC7(inifile *dba, const key_type *key, int skip) {
	line_type ln = {{NULL,NULL},NULL};
	val_type val;
	int res, grp_eq = 0;

	if (skip == -1 && dba->next.key.group && dba->next.key.name && !FUNC1(&dba->next.key, key)) {
		/* we got position already from last fetch */
		FUNC5(dba->fp, dba->next.pos, SEEK_SET);
		ln.key.group = FUNC0(dba->next.key.group);
	} else {
		/* specific instance or not same key -> restart search */
		/* the slow way: restart and seacrch */
		FUNC4(dba->fp);
		FUNC2(&dba->next);
	}
	if (skip == -1) {
		skip = 0;
	}
	while(FUNC3(dba, &ln)) {
		if (!(res=FUNC1(&ln.key, key))) {
			if (!skip) {
				val.value = FUNC0(ln.val.value ? ln.val.value : "");
				/* allow faster access by updating key read into next */
				FUNC2(&dba->next);
				dba->next = ln;
				dba->next.pos = FUNC6(dba->fp);
				return val;
			}
			skip--;
		} else if (res == 1) {
			grp_eq = 1;
		} else if (grp_eq) {
			/* we are leaving group now: that means we cannot find the key */
			break;
		}
	}
	FUNC2(&ln);
	dba->next.pos = FUNC6(dba->fp);
	return ln.val;
}