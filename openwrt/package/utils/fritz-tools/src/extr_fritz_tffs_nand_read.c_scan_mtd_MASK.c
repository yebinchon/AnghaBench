#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct mtd_info_user {int erasesize; int size; } ;
typedef  int off_t ;
struct TYPE_3__ {int num_sectors; int /*<<< orphan*/  sectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  MEMGETINFO ; 
 int TFFS_SECTOR_SIZE ; 
 int blocksize ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtd_info_user*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  mtdfd ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__* sectors ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(void)
{
	struct mtd_info_user info;

	if (FUNC4(mtdfd, MEMGETINFO, &info)) {
		return 0;
	}

	blocksize = info.erasesize;

	sectors = FUNC5(sizeof(*sectors) + (info.size / TFFS_SECTOR_SIZE + 7) / 8);
	if (sectors == NULL) {
		FUNC3(stderr, "ERROR: memory allocation failed!\n");
		FUNC2(EXIT_FAILURE);
	}
	sectors->num_sectors = info.size / TFFS_SECTOR_SIZE;
	FUNC6(sectors->sectors, 0xff, (info.size / TFFS_SECTOR_SIZE + 7) / 8);

	uint32_t sector = 0, valid_blocks = 0;
	uint8_t block_ok = 0;
	for (off_t pos = 0; pos < info.size; sector++, pos += TFFS_SECTOR_SIZE) {
		if (pos % info.erasesize == 0) {
			block_ok = FUNC0(pos, sector);
			/* first sector of the block contains metadata
			   => handle it like a bad sector */
			FUNC8(sector);
			if (block_ok) {
				valid_blocks++;
			}
		} else if (!block_ok || !FUNC7(sector) || !FUNC1(pos)) {
			FUNC8(sector);
		}
	}

	return valid_blocks;
}