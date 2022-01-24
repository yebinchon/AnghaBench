#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_bool ;
struct TYPE_11__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  key; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef  TYPE_3__ line_type ;
typedef  int /*<<< orphan*/  key_type ;
struct TYPE_13__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_4__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(inifile *dba, inifile *from, const key_type *key, zend_bool *found)
{
	size_t pos_start = 0, pos_next = 0, pos_curr;
	int ret = SUCCESS;
	line_type ln = {{NULL,NULL},{NULL}};

	FUNC6(from->fp, 0, SEEK_SET);
	FUNC6(dba->fp, 0, SEEK_END);
	while(FUNC3(from, &ln)) {
		switch(FUNC1(&ln.key, key)) {
		case 0:
			if (found) {
				*found = (zend_bool) 1;
			}
			pos_curr = FUNC7(from->fp);
			if (pos_start != pos_next) {
				FUNC6(from->fp, pos_start, SEEK_SET);
				if (SUCCESS != FUNC5(from->fp, dba->fp, pos_next - pos_start, NULL)) {
					FUNC4(NULL, E_WARNING, "Could not copy [%zu - %zu] from temporary stream", pos_next, pos_start);
					ret = FAILURE;
				}
				FUNC6(from->fp, pos_curr, SEEK_SET);
			}
			pos_next = pos_start = pos_curr;
			break;
		case 1:
			pos_next = FUNC7(from->fp);
			break;
		case 2:
			/* the function is meant to process only entries from same group */
			FUNC0(0);
			break;
		}
	}
	if (pos_start != pos_next) {
		FUNC6(from->fp, pos_start, SEEK_SET);
		if (SUCCESS != FUNC5(from->fp, dba->fp, pos_next - pos_start, NULL)) {
			FUNC4(NULL, E_WARNING, "Could not copy [%zu - %zu] from temporary stream", pos_next, pos_start);
			ret = FAILURE;
		}
	}
	FUNC2(&ln);
	return ret;
}