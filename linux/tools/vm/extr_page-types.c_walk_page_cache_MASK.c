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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int FTW_MOUNT ; 
 int FTW_PHYS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIG_DFL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kpageflags_fd ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  opt_file ; 
 char* opt_kpageflags ; 
 int /*<<< orphan*/  pagemap_fd ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigbus_action ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  walk_tree ; 

__attribute__((used)) static void FUNC10(void)
{
	struct stat st;

	kpageflags_fd = FUNC2(opt_kpageflags, O_RDONLY);
	pagemap_fd = FUNC2("/proc/self/pagemap", O_RDONLY);
	FUNC6(SIGBUS, &sigbus_action, NULL);

	if (FUNC8(opt_file, &st))
		FUNC4("stat failed: %s\n", opt_file);

	if (FUNC1(st.st_mode)) {
		FUNC9(opt_file, &st);
	} else if (FUNC0(st.st_mode)) {
		/* do not follow symlinks and mountpoints */
		if (FUNC5(opt_file, walk_tree, 64, FTW_MOUNT | FTW_PHYS) < 0)
			FUNC4("nftw failed: %s\n", opt_file);
	} else
		FUNC4("unhandled file type: %s\n", opt_file);

	FUNC3(kpageflags_fd);
	FUNC3(pagemap_fd);
	FUNC7(SIGBUS, SIG_DFL);
}