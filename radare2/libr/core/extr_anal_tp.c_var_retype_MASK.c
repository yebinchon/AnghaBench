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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_3__ {char* type; int /*<<< orphan*/  name; int /*<<< orphan*/  isarg; int /*<<< orphan*/  size; int /*<<< orphan*/  kind; int /*<<< orphan*/  delta; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_1__ RAnalVar ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 char* FUNC12 (char const*,char*) ; 

__attribute__((used)) static void FUNC13(RAnal *anal, RAnalVar *var, const char *vname, char *type, ut64 addr, bool ref, bool pfx) {
	if (!type || !var) {
		return;
	}
	char *trim = type;
	FUNC3 (trim);
	if (!*trim) {
		return;
	}
	bool is_ptr = (vname && *vname == '*')? true: false;
	if (!FUNC11 (trim, "int", 3) || (!is_ptr && !FUNC10 (trim, "void"))) {
		// default or void type
		return;
	}
	const char *expand = var->type;
	if (!FUNC10(var->type, "int32_t")) {
		expand = "int";
	} else if (!FUNC10(var->type, "uint32_t")) {
		expand = "unsigned int";
	} else if (!FUNC10(var->type, "uint64_t")) {
		expand = "unsigned long long";
	}
	const char *tmp = FUNC12 (expand, "int");
	bool is_default = tmp? true: false;
	if (!is_default && FUNC11 (var->type, "void", 4)) {
		// return since type is already propagated
		// except for "void *", since "void *" => "char *" is possible
		return;
	}
	RStrBuf *sb = FUNC7 ("");
	if (pfx) {
		if (is_default && FUNC11 (var->type, "signed", 6)) {
			FUNC9 (sb, "%s %s", type, tmp);
		} else {
			FUNC5 (sb);
			return;
		}
	} else {
		FUNC8 (sb, trim);
	}
	if (!FUNC11 (FUNC6 (sb), "const ", 6)) {
		// Dropping const from type
		//TODO: Inferring const type
		FUNC9 (sb, "%s", type + 6);
	}
	if (is_ptr) {
		//type *ptr => type *
		FUNC4 (sb, " *");
	}
	if (ref) {
		if (FUNC1 (FUNC6 (sb), "*")) { // type * => type **
			FUNC4 (sb, "*");
		} else {   //  type => type *
			FUNC4 (sb, " *");
		}
	}

	char* tmp1 = FUNC6 (sb);
	if (FUNC2 (tmp1, "unsigned long long")) {
		FUNC8 (sb, "uint64_t");
	} else if (FUNC2 (tmp1, "unsigned")) {
		FUNC8 (sb, "uint32_t");
	} else if (FUNC2 (tmp1, "int")) {
		FUNC8 (sb, "int32_t");
	}
	FUNC0 (anal, addr, 1, var->delta, var->kind, FUNC6 (sb), var->size, var->isarg, var->name);
	FUNC5 (sb);
}