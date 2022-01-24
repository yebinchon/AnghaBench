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
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int* end_addr ; 
 unsigned char FUNC3 () ; 
 int range_count ; 
 int FUNC4 (int,unsigned char*,int) ; 
 unsigned long FUNC5 (int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC7(int fd)
{
	/* somewhat arbitrarily chosen address */
	unsigned long paddr =
		(end_addr[range_count - 1] - 0xF000) & ~(ADI_BLKSZ - 1);
	unsigned char version, expected_version;
	loff_t offset;
	off_t oret;
	int ret;

	offset = paddr / ADI_BLKSZ;
	version = expected_version = FUNC3();

	oret = FUNC5(fd, offset, SEEK_SET);
	if (oret != offset) {
		ret = -1;
		FUNC2(ret);
	}

	ret = FUNC6(fd, &version, sizeof(version));
	if (ret != sizeof(version))
		FUNC2(ret);

	oret = FUNC5(fd, offset, SEEK_SET);
	if (oret != offset) {
		ret = -1;
		FUNC2(ret);
	}

	ret = FUNC4(fd, &version, sizeof(version));
	if (ret != sizeof(version))
		FUNC2(ret);

	if (expected_version != version) {
		FUNC0("\tExpected version %d but read version %d\n",
			       expected_version, version);
		FUNC2(-expected_version);
	}

	ret = 0;
out:
	FUNC1(ret);
}