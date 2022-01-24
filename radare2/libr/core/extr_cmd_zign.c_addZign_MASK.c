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
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
#define  R_SIGN_ANAL 138 
#define  R_SIGN_BBHASH 137 
#define  R_SIGN_BYTES 136 
#define  R_SIGN_COMMENT 135 
#define  R_SIGN_GRAPH 134 
#define  R_SIGN_NAME 133 
#define  R_SIGN_OFFSET 132 
#define  R_SIGN_REFS 131 
#define  R_SIGN_TYPES 130 
#define  R_SIGN_VARS 129 
#define  R_SIGN_XREFS 128 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static bool FUNC11(RCore *core, const char *name, int type, const char *args0, int nargs) {
	switch (type) {
	case R_SIGN_BYTES:
	case R_SIGN_ANAL:
		return FUNC0 (core, name, type, args0, nargs);
	case R_SIGN_GRAPH:
		return FUNC2 (core, name, args0, nargs);
	case R_SIGN_COMMENT:
		return FUNC1 (core, name, args0, nargs);
	case R_SIGN_NAME:
		return FUNC4 (core, name, args0, nargs);
	case R_SIGN_OFFSET:
		return FUNC5 (core, name, args0, nargs);
	case R_SIGN_REFS:
		return FUNC6 (core, name, args0, nargs);
	case R_SIGN_XREFS:
		return FUNC9 (core, name, args0, nargs);
	case R_SIGN_VARS:
		return FUNC8 (core, name, args0, nargs);
	case R_SIGN_TYPES:
		return FUNC7 (core, name, args0, nargs);
	case R_SIGN_BBHASH:
		return FUNC3 (core, name, type, args0, nargs);
	default:
		FUNC10 ("error: unknown zignature type\n");
	}

	return false;
}