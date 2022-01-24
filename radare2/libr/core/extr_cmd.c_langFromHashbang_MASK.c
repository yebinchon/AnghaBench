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
typedef  int /*<<< orphan*/  firstLine ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC6(RCore *core, const char *file) {
	int fd = FUNC1 (file, O_RDONLY, 0);
	if (fd != -1) {
		char firstLine[128] = {0};
		int len = FUNC2 (fd, (ut8*)firstLine, sizeof (firstLine) - 1);
		firstLine[len] = 0;
		if (!FUNC5 (firstLine, "#!/", 3)) {
			// I CAN HAS A HASHBANG
			char *nl = FUNC3 (firstLine, '\n');
			if (nl) {
				*nl = 0;
			}
			nl = FUNC3 (firstLine, ' ');
			if (nl) {
				*nl = 0;
			}
			return FUNC4 (firstLine + 2);
		}
		FUNC0 (fd);
	}
	return NULL;
}