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
struct seama_entity_header {scalar_t__ magic; int /*<<< orphan*/  size; int /*<<< orphan*/  metasize; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEAMA_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int erasesize ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int,size_t) ; 
 size_t mtdsize ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int,char*,int,size_t) ; 
 int FUNC11 (int,char*,int,size_t) ; 
 int quiet ; 
 scalar_t__ FUNC12 (struct seama_entity_header*,int,size_t,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(const char *mtd, size_t offset, size_t data_size)
{
	int fd;
	char *first_block;
	ssize_t res;
	size_t block_offset;
	size_t data_offset;
	struct seama_entity_header *shdr;

	if (quiet < 2)
		FUNC2(stderr, "Trying to fix SEAMA header in %s at 0x%zx...\n",
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
		FUNC9("malloc");
		FUNC1(1);
	}

	res = FUNC10(fd, first_block, erasesize, block_offset);
	if (res != erasesize) {
		FUNC9("pread");
		FUNC1(1);
	}

	shdr = (struct seama_entity_header *)(first_block + offset);
	if (shdr->magic != FUNC3(SEAMA_MAGIC)) {
		FUNC2(stderr, "No SEAMA header found\n");
		FUNC1(1);
	} else if (!FUNC7(shdr->size)) {
		FUNC2(stderr, "Seama entity with empty image\n");
		FUNC1(1);
	}

	data_offset = offset + sizeof(struct seama_entity_header) + FUNC8(shdr->metasize);
	if (!data_size)
		data_size = mtdsize - data_offset;
	if (data_size > FUNC7(shdr->size))
		data_size = FUNC7(shdr->size);
	if (FUNC12(shdr, fd, data_offset, data_size))
		goto out;

	if (FUNC6(fd, block_offset)) {
		FUNC2(stderr, "Can't erease block at 0x%zx (%s)\n",
			block_offset, FUNC13(errno));
		FUNC1(1);
	}

	if (quiet < 2)
		FUNC2(stderr, "Rewriting block at 0x%zx\n", block_offset);

	if (FUNC11(fd, first_block, erasesize, block_offset) != erasesize) {
		FUNC2(stderr, "Error writing block (%s)\n", FUNC13(errno));
		FUNC1(1);
	}

	if (quiet < 2)
		FUNC2(stderr, "Done.\n");

out:
	FUNC0 (fd);
	FUNC14();

	return 0;
}