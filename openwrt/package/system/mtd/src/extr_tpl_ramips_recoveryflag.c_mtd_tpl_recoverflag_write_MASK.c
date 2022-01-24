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
typedef  scalar_t__ uint32_t ;
struct uboot_args {scalar_t__ magic; } ;
struct erase_info_user {int /*<<< orphan*/  length; scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMERASE ; 
 scalar_t__ TPL_NO_RECOVER_MAGIC ; 
 scalar_t__ TPL_RECOVER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  erasesize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct uboot_args*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct erase_info_user*) ; 
 struct uboot_args* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct uboot_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,struct uboot_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(const char *mtd, const bool recovery_active)
{
	struct erase_info_user erase_info;
	struct uboot_args *args;
	uint32_t magic;
	int ret = 0;
	int fd;

	args = FUNC4(erasesize);
	if (!args) {
		FUNC1(stderr, "Could not allocate memory!\n");
		return -1;
	}

	fd = FUNC5(mtd);
	if (fd < 0) {
		FUNC1(stderr, "Could not open mtd device: %s\n", mtd);
		ret = -1;
		goto out;
	}

	/* read first block (containing the magic) */
	FUNC6(fd, args, erasesize, 0);

	/* set magic to desired value */
	magic = TPL_RECOVER_MAGIC;
	if (!recovery_active)
		magic = TPL_NO_RECOVER_MAGIC;

	/* no need to write when magic is already set correctly */
	if (magic == args->magic)
		goto out;

	/* erase first block (containing the magic) */
	erase_info.start = 0;
	erase_info.length = erasesize;

	ret = FUNC3(fd, MEMERASE, &erase_info);
	if (ret < 0) {
		FUNC1(stderr, "failed to erase block: %i\n", ret);
		goto out;
	}

	/* write magic to flash */
	args->magic = magic;

	ret = FUNC7(fd, args, erasesize, 0);
	if (ret < 0)
		FUNC1(stderr, "failed to write: %i\n", ret);

	FUNC8();
out:
	FUNC2(args);
	FUNC0(fd);

	return ret;
}