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
struct TYPE_3__ {int /*<<< orphan*/  sdb_classes_attrs; } ;
typedef  int /*<<< orphan*/  RAnalClassAttrType ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char const*,char const*) ; 
 char* FUNC2 (char const*,char const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(RAnal *anal, const char *class_name, RAnalClassAttrType attr_type, const char *attr_id, bool specific) {
	const char *attr_type_str = FUNC0 (attr_type);
	char *key = specific
			? FUNC2 (class_name, attr_type_str, attr_id)
			: FUNC1 (class_name, attr_type_str, attr_id);
	char *ret = FUNC3 (anal->sdb_classes_attrs, key, 0);
	return ret;
}