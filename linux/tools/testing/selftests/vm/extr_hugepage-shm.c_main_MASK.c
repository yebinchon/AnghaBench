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

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_RMID ; 
 unsigned long LENGTH ; 
 int /*<<< orphan*/  SHMAT_FLAGS ; 
 int SHM_HUGETLB ; 
 int SHM_R ; 
 int SHM_W ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (void const*) ; 
 int FUNC7 (int,unsigned long,int) ; 

int FUNC8(void)
{
	int shmid;
	unsigned long i;
	char *shmaddr;

	shmid = FUNC7(2, LENGTH, SHM_HUGETLB | IPC_CREAT | SHM_R | SHM_W);
	if (shmid < 0) {
		FUNC2("shmget");
		FUNC1(1);
	}
	FUNC3("shmid: 0x%x\n", shmid);

	shmaddr = FUNC4(shmid, ADDR, SHMAT_FLAGS);
	if (shmaddr == (char *)-1) {
		FUNC2("Shared memory attach failure");
		FUNC5(shmid, IPC_RMID, NULL);
		FUNC1(2);
	}
	FUNC3("shmaddr: %p\n", shmaddr);

	FUNC0("Starting the writes:\n");
	for (i = 0; i < LENGTH; i++) {
		shmaddr[i] = (char)(i);
		if (!(i % (1024 * 1024)))
			FUNC0(".");
	}
	FUNC0("\n");

	FUNC0("Starting the Check...");
	for (i = 0; i < LENGTH; i++)
		if (shmaddr[i] != (char)i) {
			FUNC3("\nIndex %lu mismatched\n", i);
			FUNC1(3);
		}
	FUNC0("Done.\n");

	if (FUNC6((const void *)shmaddr) != 0) {
		FUNC2("Detach failure");
		FUNC5(shmid, IPC_RMID, NULL);
		FUNC1(4);
	}

	FUNC5(shmid, IPC_RMID, NULL);

	return 0;
}