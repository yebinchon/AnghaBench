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
typedef  int /*<<< orphan*/  REgg ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(REgg *egg) {
	RBuffer *b;
	int ret = false;
	char *p = FUNC6 (egg, "egg.shellcode");
	if (p && *p) {
		if (!FUNC10 (egg, p)) {
			FUNC0 ("Unknown shellcode '%s'\n", p);
			FUNC1 (p);
			return false;
		}
		FUNC1 (p);
	} else {
		FUNC0 ("Setup a shellcode before (gi command)\n");
		FUNC1 (p);
		return false;
	}

	FUNC3 (egg);
	if (!FUNC2 (egg)) {
		FUNC0 ("r_egg_assemble: invalid assembly\n");
		return false;
	}
	p = FUNC6 (egg, "egg.padding");
	if (p && *p) {
		FUNC8 (egg, p);
		FUNC1 (p);
	}
	p = FUNC6 (egg, "egg.encoder");
	if (p && *p) {
		FUNC4 (egg, p);
		FUNC1 (p);
	}
	if ((b = FUNC5 (egg))) {
		FUNC11 (b);
		ret = true;
	}
	// we do not own this buffer!!
	// r_buf_free (b);
	FUNC7 (egg, "egg.shellcode", "");
	FUNC7 (egg, "egg.padding", "");
	FUNC7 (egg, "egg.encoder", "");
	FUNC7 (egg, "key", "");

	FUNC9 (egg);
	return ret;
}