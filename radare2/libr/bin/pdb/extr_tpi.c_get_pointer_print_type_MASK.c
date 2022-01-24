#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* get_utype ) (TYPE_1__*,void**) ;int /*<<< orphan*/  (* get_print_type ) (TYPE_1__*,char**) ;} ;
struct TYPE_6__ {TYPE_1__ type_data; } ;
typedef  TYPE_1__ STypeInfo ;
typedef  TYPE_2__ SType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char**) ; 

__attribute__((used)) static void FUNC8(void *type, char **name) {
	STypeInfo *ti = (STypeInfo *) type;
	SType *t = 0;
	char *tmp_name = NULL;
	int name_len = 0;
	int need_to_free = 1;
	int base_type = 0;

	base_type = ti->get_utype (ti, (void **)&t);
	if (!t) {
		need_to_free = 0;
		FUNC2 (base_type, &tmp_name);
	} else {
		ti = &t->type_data;
		ti->get_print_type (ti, &tmp_name);
	}

	name_len = FUNC5 ("pointer to ");
	if (tmp_name) {
		name_len += FUNC5 (tmp_name);
	}
	*name = (char *) FUNC1 (name_len + 1);
	if (!(*name)) {
	// 	free (tmp_name);
		return;
	}
	// name[name_len] = '\0';
	FUNC4 (*name, "pointer to ");
	if (tmp_name) {
		FUNC3 (*name, tmp_name);
	}
	if (need_to_free) {
		FUNC0 (tmp_name);
		tmp_name = 0;
	}
}