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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  RFSFile ;
typedef  int /*<<< orphan*/  RFS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static bool FUNC11(RFS *fs, char *msg, const ut8 *data, const char *cwd) {
	char *red = FUNC9 (msg, '>');
	if (red) {
		*red++ = 0;
		FUNC7 (msg);
		red = FUNC8 (red);
		if (*red != '/') {
			char *blu = FUNC6 ("%s/%s", cwd, red);
			FUNC1 (red);
			red = blu;
		} else {
		}
		RFSFile *f = FUNC4 (fs, red, true);
		if (!f) {
			FUNC0 ("Cannot open %s for writing\n", red);
			FUNC1 (red);
			return true;
		}
		FUNC5 (fs, f, 0, data == NULL ? (const ut8 *) msg : data, FUNC10 (msg));
		FUNC1 (red);
		FUNC2 (fs, f);
		FUNC3 (f);
		return true;
	}
	return false;
}