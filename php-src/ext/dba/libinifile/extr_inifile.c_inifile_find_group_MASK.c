#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_14__ {int /*<<< orphan*/  key; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef  TYPE_3__ line_type ;
struct TYPE_15__ {scalar_t__ group; } ;
typedef  TYPE_4__ key_type ;
struct TYPE_16__ {int /*<<< orphan*/  fp; TYPE_3__ next; TYPE_3__ curr; } ;
typedef  TYPE_5__ inifile ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(inifile *dba, const key_type *key, size_t *pos_grp_start)
{
	int ret = FAILURE;

	FUNC3(dba->fp);
	FUNC4(dba->fp, 0, SEEK_SET);
	FUNC1(&dba->curr);
	FUNC1(&dba->next);

	if (key->group && FUNC6(key->group)) {
		int res;
		line_type ln = {{NULL,NULL},{NULL}};

		res = 1;
		while(FUNC2(dba, &ln)) {
			if ((res=FUNC0(&ln.key, key)) < 2) {
				ret = SUCCESS;
				break;
			}
			*pos_grp_start = FUNC5(dba->fp);
		}
		FUNC1(&ln);
	} else {
		*pos_grp_start = 0;
		ret = SUCCESS;
	}
	if (ret == FAILURE) {
		*pos_grp_start = FUNC5(dba->fp);
	}
	return ret;
}