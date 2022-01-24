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
struct TYPE_6__ {int /*<<< orphan*/  demanglercmd; int /*<<< orphan*/  cur; } ;
struct TYPE_5__ {TYPE_2__* bin; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
#define  R_BIN_NM_CXX 133 
#define  R_BIN_NM_DLANG 132 
#define  R_BIN_NM_JAVA 131 
#define  R_BIN_NM_MSVC 130 
#define  R_BIN_NM_OBJC 129 
#define  R_BIN_NM_SWIFT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (TYPE_2__*,char*,char const*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static bool FUNC10(RCore *core, const char *lang, const char *s) {
	char *res = NULL;
	int type = FUNC8 (lang);
	switch (type) {
	case R_BIN_NM_CXX: res = FUNC1 (core->bin->cur, s, 0); break;
	case R_BIN_NM_JAVA: res = FUNC2 (s); break;
	case R_BIN_NM_OBJC: res = FUNC5 (NULL, s); break;
	case R_BIN_NM_SWIFT: res = FUNC7 (s, core->bin->demanglercmd); break;
	case R_BIN_NM_DLANG: res = FUNC6 (core->bin, "dlang", s); break;
	case R_BIN_NM_MSVC: res = FUNC4 (s); break;
	default:
		FUNC3 (core->bin);
		return true;
	}
	if (res) {
		if (*res) {
			FUNC9 ("%s\n", res);
		}
		FUNC0 (res);
		return false;
	}
	return true;
}