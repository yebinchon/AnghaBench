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
typedef  int /*<<< orphan*/  uint8_t ;
struct wrgg03_header {int magic1; size_t size; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int WRGG03_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int erasesize ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int,size_t) ; 
 size_t mtdsize ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char*,int,size_t) ; 
 int FUNC9 (int,char*,int,size_t) ; 
 int quiet ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (struct wrgg03_header*,int,size_t,size_t) ; 

int
FUNC13(const char *mtd, size_t offset, size_t data_size)
{
	int fd;
	char *first_block;
	ssize_t res;
	size_t block_offset;
	size_t data_offset;
	struct wrgg03_header *shdr;

	if (quiet < 2)
		FUNC2(stderr, "Trying to fix WRGG header in %s at 0x%zx...\n",
			mtd, offset);

	block_offset = offset & ~(erasesize - 1);
	offset -= block_offset;

	fd = FUNC5(mtd);
	if(fd < 0) {
		FUNC2(stderr, "Could not open mtd device: %s\n", mtd);
		FUNC1(1);
	}

	if (block_offset + erasesize > mtdsize) {
		FUNC2(stderr, "Offset too large, device size 0x%zx\n",
			mtdsize);
		FUNC1(1);
	}

	first_block = FUNC4(erasesize);
	if (!first_block) {
		FUNC7("malloc");
		FUNC1(1);
	}

	res = FUNC8(fd, first_block, erasesize, block_offset);
	if (res != erasesize) {
		FUNC7("pread");
		FUNC1(1);
	}

	shdr = (struct wrgg03_header *)(first_block + offset);

	/* The magic is always stored in little-endian byte order */
	if (FUNC3((uint8_t *)&shdr->magic1) != WRGG03_MAGIC) {
		FUNC2(stderr, "magic1 = %x\n", shdr->magic1);
		FUNC2(stderr, "WRGG03_MAGIC = %x\n", WRGG03_MAGIC);
		FUNC2(stderr, "No WRGG header found\n");
		FUNC1(1);
	} else if (!shdr->size) {
		FUNC2(stderr, "WRGG entity with empty image\n");
		FUNC1(1);
	}

	data_offset = offset + sizeof(struct wrgg03_header);
	if (!data_size)
		data_size = mtdsize - data_offset;
	if (data_size > shdr->size)
		data_size = shdr->size;
	if (FUNC12(shdr, fd, data_offset, data_size))
		goto out;

	if (FUNC6(fd, block_offset)) {
		FUNC2(stderr, "Can't erease block at 0x%zx (%s)\n",
			block_offset, FUNC10(errno));
		FUNC1(1);
	}

	if (quiet < 2)
		FUNC2(stderr, "Rewriting block at 0x%zx\n", block_offset);

	if (FUNC9(fd, first_block, erasesize, block_offset) != erasesize) {
		FUNC2(stderr, "Error writing block (%s)\n", FUNC10(errno));
		FUNC1(1);
	}

	if (quiet < 2)
		FUNC2(stderr, "Done.\n");

out:
	FUNC0 (fd);
	FUNC11();

	return 0;
}