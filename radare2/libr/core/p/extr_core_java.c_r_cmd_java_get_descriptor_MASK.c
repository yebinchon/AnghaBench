#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ut32 ;
typedef  scalar_t__ ut16 ;
struct TYPE_7__ {int /*<<< orphan*/  class_idx; } ;
struct TYPE_8__ {TYPE_1__ cp_method; } ;
struct TYPE_9__ {scalar_t__ tag; TYPE_2__ info; } ;
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RBinJavaObj ;
typedef  TYPE_3__ RBinJavaCPTypeObj ;

/* Variables and functions */
 scalar_t__ R_BIN_JAVA_CP_FIELDREF ; 
 scalar_t__ R_BIN_JAVA_CP_INTERFACEMETHOD_REF ; 
 scalar_t__ R_BIN_JAVA_CP_METHODREF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static char * FUNC10 (RCore *core, RBinJavaObj *bin, ut16 idx) {
	char *class_name = NULL, *fullname = NULL, *name = NULL, *descriptor = NULL;
	RBinJavaCPTypeObj * obj = FUNC3 (bin, idx);
	char * prototype = NULL;
	if (idx == 0) {
		prototype = FUNC8 ("NULL");
		return prototype;
	}

	if (obj->tag == R_BIN_JAVA_CP_INTERFACEMETHOD_REF ||
		obj->tag == R_BIN_JAVA_CP_METHODREF ||
		obj->tag == R_BIN_JAVA_CP_FIELDREF) {
		class_name = FUNC5 (bin, obj->info.cp_method.class_idx);
		name = FUNC4 (bin, obj);
		descriptor = FUNC2 (bin, obj);
	}

	if (class_name && name) {
		ut32 fn_len = 0;
		fn_len += FUNC9 (class_name);
		fn_len += FUNC9 (name);
		fn_len += 2; // dot + null
		fullname = FUNC1 (fn_len);
		FUNC7 (fullname, fn_len, "%s.%s", class_name, name);
	}
	if (fullname) {
		prototype = FUNC6 (fullname, descriptor);
	}
	FUNC0 (class_name);
	FUNC0 (name);
	FUNC0 (descriptor);
	FUNC0 (fullname);
	return prototype;
}