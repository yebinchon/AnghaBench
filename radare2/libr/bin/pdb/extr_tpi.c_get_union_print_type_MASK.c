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
struct TYPE_3__ {int /*<<< orphan*/  (* get_name ) (TYPE_1__*,char**) ;} ;
typedef  TYPE_1__ STypeInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char**) ; 

__attribute__((used)) static void FUNC5(void *type, char **name) {
	STypeInfo *ti = (STypeInfo *) type;
//	ELeafType lt;
	char *tmp_name = 0, *tmp1 = 0;
	int name_len = 0;

//	lt = ti->leaf_type;
	ti->get_name (ti, &tmp_name);

	tmp1 = "union ";
	name_len = FUNC3 (tmp1);
	if (tmp_name) {
		name_len += FUNC3 (tmp_name);
	}
	*name = (char *) FUNC0 (name_len + 1);
	if (!(*name)) {
		return;
	}
	// name[name_len] = '\0';
	FUNC2 (*name, tmp1);
	if (tmp_name) {
		FUNC1 (*name, tmp_name);
	}

	//	if (need_to_free) {
	//		free(tmp_name);
	//		tmp_name = 0;
	//	}
}