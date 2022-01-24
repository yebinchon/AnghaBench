#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int demanglercmd; } ;

/* Variables and functions */
#define  R_BIN_NM_CXX 133 
#define  R_BIN_NM_JAVA 132 
#define  R_BIN_NM_MSVC 131 
#define  R_BIN_NM_OBJC 130 
#define  R_BIN_NM_RUST 129 
#define  R_BIN_NM_SWIFT 128 
 TYPE_1__* bin ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  file ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *FUNC7(int type) {
	bool syscmd = bin? bin->demanglercmd: false;
	char *res = NULL;
	switch (type) {
	case R_BIN_NM_CXX: res = FUNC1 (NULL, file, 0); break;
	case R_BIN_NM_JAVA: res = FUNC2 (file); break;
	case R_BIN_NM_OBJC: res = FUNC4 (NULL, file); break;
	case R_BIN_NM_SWIFT: res = FUNC6 (file, syscmd); break;
	case R_BIN_NM_MSVC: res = FUNC3 (file); break;
	case R_BIN_NM_RUST: res = FUNC5 (NULL, file, 0); break;
	default:
		FUNC0 ("Unsupported demangler\n");
		break;
	}
	return res;
}