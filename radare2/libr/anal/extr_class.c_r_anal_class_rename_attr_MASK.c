#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RAnalClassErr ;
typedef  int /*<<< orphan*/  RAnalClassAttrType ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_CLASS_ERR_OTHER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static RAnalClassErr FUNC3(RAnal *anal, const char *class_name, RAnalClassAttrType attr_type, const char *attr_id_old, const char *attr_id_new) {
	char *class_name_sanitized = FUNC2 (class_name);
	if (!class_name_sanitized) {
		return R_ANAL_CLASS_ERR_OTHER;
	}
	char *attr_id_old_sanitized = FUNC2 (attr_id_old);
	if (!attr_id_old_sanitized) {
		FUNC0 (class_name_sanitized);
		return R_ANAL_CLASS_ERR_OTHER;
	}
	char *attr_id_new_sanitized = FUNC2 (attr_id_new);
	if (!attr_id_new_sanitized) {
		FUNC0 (class_name_sanitized);
		FUNC0 (attr_id_old_sanitized);
		return R_ANAL_CLASS_ERR_OTHER;
	}
	RAnalClassErr ret = FUNC1 (anal, class_name_sanitized, attr_type, attr_id_old_sanitized, attr_id_new_sanitized);
	FUNC0 (class_name_sanitized);
	FUNC0 (attr_id_old_sanitized);
	FUNC0 (attr_id_new_sanitized);
	return ret;
}