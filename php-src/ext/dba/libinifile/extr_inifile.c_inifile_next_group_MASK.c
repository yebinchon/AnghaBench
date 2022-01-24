#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  group; } ;
struct TYPE_15__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_14__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_16__ {TYPE_11__ key; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef  TYPE_3__ line_type ;
struct TYPE_17__ {int /*<<< orphan*/  group; } ;
typedef  TYPE_4__ key_type ;
struct TYPE_18__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_5__ inifile ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_11__*,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_3__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(inifile *dba, const key_type *key, size_t *pos_grp_start)
{
	int ret = FAILURE;
	line_type ln = {{NULL,NULL},{NULL}};

	*pos_grp_start = FUNC4(dba->fp);
	ln.key.group = FUNC0(key->group);
	while(FUNC3(dba, &ln)) {
		if (FUNC1(&ln.key, key) == 2) {
			ret = SUCCESS;
			break;
		}
		*pos_grp_start = FUNC4(dba->fp);
	}
	FUNC2(&ln);
	return ret;
}