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
typedef  int /*<<< orphan*/  nr_hugepages ;
typedef  int /*<<< orphan*/  initial_nr_hugepages ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (char*) ; 
 int FUNC9 (int,char*,int) ; 

int FUNC10(unsigned long mem_free, unsigned int hugepage_size)
{
	int fd;
	int compaction_index = 0;
	char initial_nr_hugepages[10] = {0};
	char nr_hugepages[10] = {0};

	/* We want to test with 80% of available memory. Else, OOM killer comes
	   in to play */
	mem_free = mem_free * 0.8;

	fd = FUNC4("/proc/sys/vm/nr_hugepages", O_RDWR | O_NONBLOCK);
	if (fd < 0) {
		FUNC5("Failed to open /proc/sys/vm/nr_hugepages");
		return -1;
	}

	if (FUNC7(fd, initial_nr_hugepages, sizeof(initial_nr_hugepages)) <= 0) {
		FUNC5("Failed to read from /proc/sys/vm/nr_hugepages");
		goto close_fd;
	}

	/* Start with the initial condition of 0 huge pages*/
	if (FUNC9(fd, "0", sizeof(char)) != sizeof(char)) {
		FUNC5("Failed to write 0 to /proc/sys/vm/nr_hugepages\n");
		goto close_fd;
	}

	FUNC3(fd, 0, SEEK_SET);

	/* Request a large number of huge pages. The Kernel will allocate
	   as much as it can */
	if (FUNC9(fd, "100000", (6*sizeof(char))) != (6*sizeof(char))) {
		FUNC5("Failed to write 100000 to /proc/sys/vm/nr_hugepages\n");
		goto close_fd;
	}

	FUNC3(fd, 0, SEEK_SET);

	if (FUNC7(fd, nr_hugepages, sizeof(nr_hugepages)) <= 0) {
		FUNC5("Failed to re-read from /proc/sys/vm/nr_hugepages\n");
		goto close_fd;
	}

	/* We should have been able to request at least 1/3 rd of the memory in
	   huge pages */
	compaction_index = mem_free/(FUNC0(nr_hugepages) * hugepage_size);

	if (compaction_index > 3) {
		FUNC6("No of huge pages allocated = %d\n",
		       (FUNC0(nr_hugepages)));
		FUNC2(stderr, "ERROR: Less that 1/%d of memory is available\n"
			"as huge pages\n", compaction_index);
		goto close_fd;
	}

	FUNC6("No of huge pages allocated = %d\n",
	       (FUNC0(nr_hugepages)));

	FUNC3(fd, 0, SEEK_SET);

	if (FUNC9(fd, initial_nr_hugepages, FUNC8(initial_nr_hugepages))
	    != FUNC8(initial_nr_hugepages)) {
		FUNC5("Failed to write value to /proc/sys/vm/nr_hugepages\n");
		goto close_fd;
	}

	FUNC1(fd);
	return 0;

 close_fd:
	FUNC1(fd);
	FUNC6("Not OK. Compaction test failed.");
	return -1;
}