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
typedef  int /*<<< orphan*/  RLang ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* r2v ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 char* vsk ; 

__attribute__((used)) static int FUNC6(RLang *lang, const char *code, int len) {
	FILE *fd = FUNC5 (".tmp.v", "w");
	if (fd) {
		FUNC2 (r2v, fd);
		if (len < 0) {
			FUNC2 (code, fd);
		} else {
			FUNC2 (vsk, fd);
			FUNC2 (code, fd);
			FUNC2 ("}", fd);
		}
		FUNC1 (fd);
		FUNC3 (lang, ".tmp.v");
		FUNC4 (".tmp.v");
		return true;
	}
	FUNC0 ("Cannot open .tmp.v\n");
	return false;
}