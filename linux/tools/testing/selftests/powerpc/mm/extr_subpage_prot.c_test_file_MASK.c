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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_sigaction; } ;
typedef  int off_t ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SA_SIGINFO ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* file_name ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (void*,int) ; 
 int /*<<< orphan*/  segv ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(void)
{
	struct sigaction act = {
		.sa_sigaction = segv,
		.sa_flags = SA_SIGINFO
	};
	void *fileblock;
	off_t filesize;
	int fd;

	FUNC0(!FUNC8());

	fd = FUNC3(file_name, O_RDWR);
	if (fd == -1) {
		FUNC4("failed to open file");
		return 1;
	}
	FUNC7(SIGSEGV, &act, NULL);

	filesize = FUNC1(fd, 0, SEEK_END);
	if (filesize & 0xffff)
		filesize &= ~0xfffful;

	fileblock = FUNC2(NULL, filesize, PROT_READ | PROT_WRITE,
			 MAP_SHARED, fd, 0);
	if (fileblock == MAP_FAILED) {
		FUNC4("failed to map file");
		return 1;
	}
	FUNC5("allocated %s for 0x%lx bytes at %p\n",
	       file_name, filesize, fileblock);

	FUNC5("testing file map...\n");

	return FUNC6(fileblock, filesize);
}