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
struct TYPE_6__ {int /*<<< orphan*/  ev; int /*<<< orphan*/  sdb_classes_attrs; } ;
struct TYPE_5__ {char const* class_name; char const* attr_id; int /*<<< orphan*/  attr_type; } ;
typedef  TYPE_1__ REventClassAttr ;
typedef  int /*<<< orphan*/  RAnalClassErr ;
typedef  int /*<<< orphan*/  RAnalClassAttrType ;
typedef  TYPE_2__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_CLASS_ERR_SUCCESS ; 
 int /*<<< orphan*/  R_EVENT_CLASS_ATTR_DEL ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char const*,char const*) ; 
 char* FUNC2 (char const*,char const*,char const*) ; 
 char* FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RAnalClassErr FUNC9(RAnal *anal, const char *class_name, RAnalClassAttrType attr_type, const char *attr_id) {
	const char *attr_type_str = FUNC0 (attr_type);

	char *key = FUNC1 (class_name, attr_type_str, attr_id);
	FUNC8 (anal->sdb_classes_attrs, key, 0);
	key = FUNC2 (class_name, attr_type_str, attr_id);
	FUNC8 (anal->sdb_classes_attrs, key, 0);

	key = FUNC3 (class_name, attr_type_str);
	FUNC6 (anal->sdb_classes_attrs, key, attr_id, 0);
	if (!FUNC7 (anal->sdb_classes_attrs, key)) {
		FUNC6 (anal->sdb_classes_attrs, FUNC4 (class_name), attr_type_str, 0);
	}

	REventClassAttr event = {
		.class_name = class_name,
		.attr_type = attr_type,
		.attr_id = attr_id
	};
	FUNC5 (anal->ev, R_EVENT_CLASS_ATTR_DEL, &event);

	return R_ANAL_CLASS_ERR_SUCCESS;
}