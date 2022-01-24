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
struct mtd_info_user {unsigned int writesize; unsigned int size; unsigned int length; scalar_t__ start; } ;
struct erase_info_user {unsigned int writesize; unsigned int size; unsigned int length; scalar_t__ start; } ;
struct bootcounter {void* magic; int count; void* checksum; } ;

/* Variables and functions */
 unsigned int BC_OFFSET_INCREMENT_MIN ; 
 void* BOOTCOUNT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  MEMERASE ; 
 int /*<<< orphan*/  MEMGETINFO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct mtd_info_user*) ; 
 int /*<<< orphan*/  FUNC6 (struct bootcounter*,int,unsigned int) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ page ; 
 int /*<<< orphan*/  FUNC8 (int,struct bootcounter*,int,unsigned int) ; 
 int FUNC9 (int,struct bootcounter*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(const char *mtd)
{
	struct mtd_info_user mtd_info;
	struct bootcounter *curr = (struct bootcounter *)page;
	unsigned int i;
	unsigned int bc_offset_increment;
	int last_count = 0;
	int num_bc;
	int fd;
	int ret;
	int retval = 0;

	FUNC3();

	fd = FUNC7(mtd);

	if (FUNC5(fd, MEMGETINFO, &mtd_info) < 0) {
		FUNC1("Unable to obtain mtd_info for given partition name.");

		retval = -1;
		goto out;
	}


	/* Detect need to override increment (for EA6350v3) */

	if (mtd_info.writesize < BC_OFFSET_INCREMENT_MIN) {

		bc_offset_increment = BC_OFFSET_INCREMENT_MIN;
		FUNC0("Offset increment set to %i for writesize of %i",
			   bc_offset_increment, mtd_info.writesize);
	} else {

		bc_offset_increment = mtd_info.writesize;
	}

	num_bc = mtd_info.size / bc_offset_increment;

	for (i = 0; i < num_bc; i++) {
		FUNC8(fd, curr, sizeof(*curr), i * bc_offset_increment);

		/* Existing code assumes erase is to 0xff; left as-is (2019) */

		if (curr->magic != BOOTCOUNT_MAGIC &&
		    curr->magic != 0xffffffff) {
			FUNC1("Unexpected magic %08x at offset %08x; aborting.",
				 curr->magic, i * bc_offset_increment);

			retval = -2;
			goto out;
		}

		if (curr->magic == 0xffffffff)
			break;

		last_count = curr->count;
	}


	if (last_count == 0) {	/* bootcount is already 0 */

		retval = 0;
		goto out;
	}


	if (i == num_bc) {
		FUNC2("Boot-count log full with %i entries; erasing (expected occasionally).",
			    i);

		struct erase_info_user erase_info;
		erase_info.start = 0;
		erase_info.length = mtd_info.size;

		ret = FUNC5(fd, MEMERASE, &erase_info);
		if (ret < 0) {
			FUNC1("Failed to erase boot-count log MTD; ioctl() MEMERASE returned %i",
				 ret);

			retval = -3;
			goto out;
		}

		i = 0;
	}

	FUNC6(curr, 0xff, bc_offset_increment);

	curr->magic = BOOTCOUNT_MAGIC;
	curr->count = 0;
	curr->checksum = BOOTCOUNT_MAGIC;

	/* Assumes bc_offset_increment is a multiple of mtd_info.writesize */

	ret = FUNC9(fd, curr, bc_offset_increment, i * bc_offset_increment);
	if (ret < 0) {
		FUNC1("Failed to write boot-count log entry; pwrite() returned %i",
			 errno);
		retval = -4;
		goto out;

	} else {
		FUNC10();

		FUNC2("Boot count sucessfully reset to zero.");

		retval = 0;
		goto out;
	}

out:
	FUNC4(fd);
	return retval;
}