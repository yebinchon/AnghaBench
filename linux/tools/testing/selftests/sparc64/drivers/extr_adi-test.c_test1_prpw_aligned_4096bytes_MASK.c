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
typedef  int /*<<< orphan*/  version ;
typedef  unsigned long loff_t ;

/* Variables and functions */
 int ADI_BLKSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TEST1_VERSION_SZ ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int* end_addr ; 
 int FUNC3 (int,unsigned char*,int,unsigned long) ; 
 int FUNC4 (int,unsigned char*,int,unsigned long) ; 
 unsigned char FUNC5 () ; 
 int range_count ; 

__attribute__((used)) static int FUNC6(int fd)
{
	/* somewhat arbitrarily chosen address */
	unsigned long paddr =
		(end_addr[range_count - 1] - 0x6000) & ~(ADI_BLKSZ - 1);
	unsigned char version[TEST1_VERSION_SZ],
		expected_version[TEST1_VERSION_SZ];
	loff_t offset;
	int ret, i;

	for (i = 0; i < TEST1_VERSION_SZ; i++) {
		version[i] = FUNC5();
		expected_version[i] = version[i];
	}

	offset = paddr / ADI_BLKSZ;

	ret = FUNC4(fd, version, sizeof(version), offset);
	if (ret != sizeof(version))
		FUNC2(ret);

	ret = FUNC3(fd, version, sizeof(version), offset);
	if (ret != sizeof(version))
		FUNC2(ret);

	for (i = 0; i < TEST1_VERSION_SZ; i++) {
		if (expected_version[i] != version[i]) {
			FUNC0(
				"\tExpected version %d but read version %d\n",
				expected_version, version[0]);
			FUNC2(-expected_version[i]);
		}
	}

	ret = 0;
out:
	FUNC1(ret);
}