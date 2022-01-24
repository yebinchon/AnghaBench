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
typedef  unsigned long off_t ;
typedef  unsigned long loff_t ;

/* Variables and functions */
 int ADI_BLKSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TEST6_VERSION_SZ ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int* end_addr ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC4 () ; 
 int range_count ; 
 int FUNC5 (int,unsigned char*,int) ; 
 unsigned long FUNC6 (int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC8(int fd)
{
	/* somewhat arbitrarily chosen address */
	unsigned long paddr =
		(end_addr[range_count - 1] - 0x5F000) & ~(ADI_BLKSZ - 1);
	unsigned char version[TEST6_VERSION_SZ],
		      expected_version[TEST6_VERSION_SZ];
	loff_t offset;
	off_t oret;
	int ret, i;

	offset = paddr / ADI_BLKSZ;
	for (i = 0; i < TEST6_VERSION_SZ; i++)
		version[i] = expected_version[i] = FUNC4();

	oret = FUNC6(fd, offset, SEEK_SET);
	if (oret != offset) {
		ret = -1;
		FUNC2(ret);
	}

	ret = FUNC7(fd, version, sizeof(version));
	if (ret != sizeof(version))
		FUNC2(ret);

	FUNC3(version, 0, TEST6_VERSION_SZ);

	oret = FUNC6(fd, offset, SEEK_SET);
	if (oret != offset) {
		ret = -1;
		FUNC2(ret);
	}

	ret = FUNC5(fd, version, sizeof(version));
	if (ret != sizeof(version))
		FUNC2(ret);

	for (i = 0; i < TEST6_VERSION_SZ; i++) {
		if (expected_version[i] != version[i]) {
			FUNC0(
				"\tExpected version %d but read version %d\n",
				expected_version[i], version[i]);
			FUNC2(-expected_version[i]);
		}
	}

	ret = 0;
out:
	FUNC1(ret);
}