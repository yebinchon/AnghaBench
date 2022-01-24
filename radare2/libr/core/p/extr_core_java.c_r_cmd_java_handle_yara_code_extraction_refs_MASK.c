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
typedef  int ut64 ;
struct TYPE_4__ {int /*<<< orphan*/  fcns; } ;
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RBinJavaObj ;
typedef  TYPE_1__ RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char const*,char,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC10 (char const*,char,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12 (RCore *core, const char *input) {
	RAnal *anal = FUNC2 (core);
	RBinJavaObj *bin = anal ? (RBinJavaObj *) FUNC7 (anal) : NULL;
	const char *p = input? FUNC6 (input, ' ', -1): NULL, *n = NULL;
	char *name = NULL;
	ut64 addr = -1, count = -1;
	int res = false;

	if (!bin) {
		return res;
	} else if (!anal || !anal->fcns || FUNC11 (anal->fcns) == 0) {
		FUNC0 ("Unable to access the current analysis, perform 'af' for function analysis.\n");
		return true;
	}

	if (!p) {
		return res;
	}

	n = *p ? FUNC10 (p, ' ', -1) : NULL;
	name = n && p && p != n ? FUNC3 (n - p + 2) : NULL;

	if (!name) {
		return res;
	}

	FUNC5 (name, 0, n-p);
	FUNC4 (name, p, n-p);

	p = FUNC10 (p, ' ', -1);
	addr = p && *p && FUNC9(core, p) ? FUNC8 (core, p) : -1;

	p = FUNC10 (p, ' ', -1);
	count = p && *p && FUNC9(core, p) ? FUNC8 (core, p) : -1;

	if (name && count != (ut64) -1 && addr != (ut64) -1) {
		// find function at addr

		// find the start basic block

		// read the bytes

		// hexlify the bytes

		// set the name = bytes

		// print t
	}
	FUNC1 (name);
	return res;
}