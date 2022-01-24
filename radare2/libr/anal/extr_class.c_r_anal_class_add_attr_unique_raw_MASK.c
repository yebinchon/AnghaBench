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
typedef  int /*<<< orphan*/  attr_id ;
typedef  scalar_t__ RAnalClassErr ;
typedef  int /*<<< orphan*/  RAnalClassAttrType ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 scalar_t__ R_ANAL_CLASS_ERR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static RAnalClassErr FUNC3(RAnal *anal, const char *class_name, RAnalClassAttrType attr_type, const char *content, char *attr_id_out, size_t attr_id_out_size) {
	char attr_id[16];
	FUNC1 (anal, class_name, attr_type, attr_id, sizeof(attr_id));

	RAnalClassErr err = FUNC0 (anal, class_name, attr_type, attr_id, content);
	if (err != R_ANAL_CLASS_ERR_SUCCESS) {
		return err;
	}

	if (attr_id_out) {
		FUNC2 (attr_id_out, attr_id, attr_id_out_size);
	}

	return R_ANAL_CLASS_ERR_SUCCESS;
}