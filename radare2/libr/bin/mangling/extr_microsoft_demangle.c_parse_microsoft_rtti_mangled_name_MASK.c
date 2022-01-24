#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type_str; } ;
typedef  TYPE_1__ STypeCodeStr ;
typedef  int /*<<< orphan*/  EDemanglerErr ;

/* Variables and functions */
 int /*<<< orphan*/  eDemanglerErrOK ; 
 int /*<<< orphan*/  eDemanglerErrUncorrectMangledSymbol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static EDemanglerErr FUNC5(char *sym, char **demangled_name) {
	EDemanglerErr err = eDemanglerErrOK;
	char *type = NULL;
	if (!FUNC4 (sym, "AT", 2)) {
		type = "union";
	} else if (!FUNC4 (sym, "AU", 2)) {
		type = "struct";
	} else if (!FUNC4 (sym, "AV", 2)) {
		type = "class";
	} else if (!FUNC4 (sym, "AW", 2)) {
		type = "enum";
	} else {
		err = eDemanglerErrUncorrectMangledSymbol;
		goto parse_microsoft_rtti_mangled_name_err;
	}
	STypeCodeStr type_code_str;
	FUNC2 (&type_code_str);
	int len = FUNC1 (sym + 2, &type_code_str, NULL);
	if (!len) {
		err = eDemanglerErrUncorrectMangledSymbol;
		goto parse_microsoft_rtti_mangled_name_err;
	}

	*demangled_name = FUNC3 ("%s %s", type, type_code_str.type_str);
	FUNC0 (type_code_str.type_str);

parse_microsoft_rtti_mangled_name_err:
	return err;
}