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
typedef  char const ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
#define  R_SIGN_ANAL 129 
#define  R_SIGN_BYTES 128 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 
 int FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*,char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,int,char const*,char const*) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,char) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static bool FUNC12(RCore *core, const char *name, int type, const char *args0, int nargs) {
	const char *hexbytes = NULL;
	ut8 *mask = NULL, *bytes = NULL, *sep = NULL;
	int size = 0, blen = 0;
	bool retval = true;

	if (nargs != 1) {
		FUNC1 ("error: invalid syntax\n");
		retval = false;
		goto out;
	}

	hexbytes = FUNC9 (args0, 0);
	if ((sep = (ut8*) FUNC10 (hexbytes, ':'))) {
		blen = sep - (ut8*) hexbytes;
		if (!blen || (blen & 1) || FUNC11 ((char*) ++sep) != blen) {
			FUNC1 ("error: cannot parse hexpairs\n");
			retval = false;
			goto out;
		}
		bytes = FUNC0 (1, blen + 1);
		mask = FUNC0 (1, blen + 1);
		FUNC4 (bytes, hexbytes, blen);
		FUNC4 (mask, sep, blen);
		size = FUNC5 ((char*) bytes, bytes);
		if (size != blen / 2 || FUNC5 ((char*) mask, mask) != size) {
			FUNC1 ("error: cannot parse hexpairs\n");
			retval = false;
			goto out;
		}
	} else {
		blen = FUNC11 (hexbytes) + 4;
		bytes = FUNC3 (blen);
		mask = FUNC3 (blen);

		size = FUNC6 (hexbytes, bytes, mask);
		if (size <= 0) {
			FUNC1 ("error: cannot parse hexpairs\n");
			retval = false;
			goto out;
		}
	}

	switch (type) {
	case R_SIGN_BYTES:
		retval = FUNC8 (core->anal, name, size, bytes, mask);
		break;
	case R_SIGN_ANAL:
		retval = FUNC7 (core->anal, name, size, bytes, 0);
		break;
	}

out:
	FUNC2 (bytes);
	FUNC2 (mask);

	return retval;
}