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
typedef  int /*<<< orphan*/  uint32_t ;
struct mtd_partition {unsigned long offset; unsigned long size; int /*<<< orphan*/  name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {unsigned long size; } ;

/* Variables and functions */
 scalar_t__ BRNIMAGE_ALIGN_BYTES ; 
 unsigned long BRNIMAGE_FOOTER_SIZE ; 
 unsigned long BRNIMAGE_MAX_OVERHEAD ; 
 unsigned long BRNIMAGE_MIN_OVERHEAD ; 
 int BRNIMAGE_NR_PARTS ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERNEL_PART_NAME ; 
 int /*<<< orphan*/  ROOTFS_PART_NAME ; 
 struct mtd_partition* FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtd_info*,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mtd_info*,unsigned long,int,size_t*,void*) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *master,
				const struct mtd_partition **pparts,
				struct mtd_part_parser_data *data)
{
	struct mtd_partition *parts;
	uint32_t buf;
	unsigned long rootfs_offset, rootfs_size, kernel_size;
	size_t len;
	int ret = 0;

	for (rootfs_offset = 0; rootfs_offset < master->size;
	     rootfs_offset += BRNIMAGE_ALIGN_BYTES) {
		ret = FUNC2(master, rootfs_offset, NULL);
		if (!ret)
			break;
	}

	if (ret)
		return ret;

	if (rootfs_offset >= master->size)
		return -EINVAL;

	ret = FUNC3(master, rootfs_offset - BRNIMAGE_FOOTER_SIZE, 4, &len,
			(void *)&buf);
	if (ret)
		return ret;

	if (len != 4)
		return -EIO;

	kernel_size = FUNC1(buf);

	if (kernel_size > (rootfs_offset - BRNIMAGE_MIN_OVERHEAD))
		return -EINVAL;

	if (kernel_size < (rootfs_offset - BRNIMAGE_MAX_OVERHEAD))
		return -EINVAL;

	/*
	 * The footer must be untouched as it contains the checksum of the
	 * original brnImage (kernel + squashfs)!
	 */
	rootfs_size = master->size - rootfs_offset - BRNIMAGE_FOOTER_SIZE;

	parts = FUNC0(BRNIMAGE_NR_PARTS * sizeof(*parts), GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	parts[0].name = KERNEL_PART_NAME;
	parts[0].offset = 0;
	parts[0].size = kernel_size;

	parts[1].name = ROOTFS_PART_NAME;
	parts[1].offset = rootfs_offset;
	parts[1].size = rootfs_size;

	*pparts = parts;
	return BRNIMAGE_NR_PARTS;
}