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
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RFSRoot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,float) ; 
 char* FUNC2 (char*,char const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static RList *FUNC5(RFSRoot *root, const char *path) {
	const char *prefix = NULL;
	if (!FUNC4 (path, "/flags/", 7)) {
		prefix = path + 7;
	}
	char *cmd = prefix
		? FUNC2 ("fq@F:%s", prefix)
		: FUNC3 ("fsq");
	RList *res = FUNC1 (root, cmd, prefix? 'f': 'd');
	FUNC0 (cmd);
	return res;
}