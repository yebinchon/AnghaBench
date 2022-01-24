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
struct r_magic {int dummy; } ;
typedef  int /*<<< orphan*/  errmsg ;
typedef  int /*<<< orphan*/  RRegex ;
typedef  int /*<<< orphan*/  RMagic ;

/* Variables and functions */
 int /*<<< orphan*/  R_MAGIC_DESC ; 
 int R_REGEX_EXTENDED ; 
 int R_REGEX_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC6(RMagic *ms, struct r_magic *m) {
	RRegex rx;
	int rc;

	if (!FUNC5 (R_MAGIC_DESC, '%')) {
		return 0;
	}

	rc = FUNC1 (&rx, "%[-0-9\\.]*s", R_REGEX_EXTENDED|R_REGEX_NOSUB);
	if (rc) {
		char errmsg[512];
		FUNC2 (rc, &rx, errmsg, sizeof (errmsg) - 1);
		FUNC0 (ms, "regex error %d, (%s)", rc, errmsg);
		return -1;
	} else {
		rc = FUNC3 (&rx, R_MAGIC_DESC, 0, 0, 0);
		FUNC4 (&rx);
		return !rc;
	}
}