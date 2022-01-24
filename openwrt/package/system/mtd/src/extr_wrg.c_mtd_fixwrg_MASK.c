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
struct wrg_header {int /*<<< orphan*/  size; int /*<<< orphan*/  magic1; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int WRG_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int erasesize ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
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
 scalar_t__ FUNC12 (struct wrg_header*,int,size_t,size_t) ; 

int
FUNC13(const char *mtd, size_t offset, size_t data_size)
{
	int fd;
	char *first_block;
	ssize_t res;
	size_t block_offset;
	size_t data_offset;
	struct wrg_header *shdr;

	if (quiet < 2)
		FUNC2(stderr, "Trying to fix WRG header in %s at 0x%zx...\n",
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

	shdr = (struct wrg_header *)(first_block + offset);
	if (FUNC3(shdr->magic1) != WRG_MAGIC) {
		FUNC2(stderr, "No WRG header found (%08zx != %08x)\n",
		        FUNC3(shdr->magic1), WRG_MAGIC);
		FUNC1(1);
	} else if (!FUNC3(shdr->size)) {
		FUNC2(stderr, "WRG entity with empty image\n");
		FUNC1(1);
	}

	data_offset = offset + sizeof(struct wrg_header);
	if (!data_size)
		data_size = mtdsize - data_offset;
	if (data_size > FUNC3(shdr->size))
		data_size = FUNC3(shdr->size);
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