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
struct mtd_partition {unsigned long offset; unsigned long size; int /*<<< orphan*/  name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {unsigned long size; } ;
struct eva_image_header {int /*<<< orphan*/  size; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ EVA_DUMMY_SQUASHFS_SIZE ; 
 unsigned long EVA_FOOTER_SIZE ; 
 unsigned long EVA_MAGIC ; 
 int EVA_NR_PARTS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERNEL_PART_NAME ; 
 int /*<<< orphan*/  ROOTFS_PART_NAME ; 
 struct mtd_partition* FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtd_info*,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,int,size_t*,void*) ; 
 unsigned long FUNC4 (unsigned long,int) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *master,
				const struct mtd_partition **pparts,
				struct mtd_part_parser_data *data)
{
	struct mtd_partition *parts;
	struct eva_image_header hdr;
	size_t retlen;
	unsigned long kernel_size, rootfs_offset;
	int err;

	err = FUNC3(master, 0, sizeof(hdr), &retlen, (void *) &hdr);
	if (err)
		return err;

	if (retlen != sizeof(hdr))
		return -EIO;

	if (FUNC1(hdr.magic) != EVA_MAGIC)
		return -EINVAL;

	kernel_size = FUNC1(hdr.size) + EVA_FOOTER_SIZE;

	/* rootfs starts at the next 0x10000 boundary: */
	rootfs_offset = FUNC4(kernel_size, 0x10000);

	/* skip the dummy EVA squashfs partition (with wrong endianness): */
	rootfs_offset += EVA_DUMMY_SQUASHFS_SIZE;

	if (rootfs_offset >= master->size)
		return -EINVAL;

	err = FUNC2(master, rootfs_offset, NULL);
	if (err)
		return err;

	parts = FUNC0(EVA_NR_PARTS * sizeof(*parts), GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	parts[0].name = KERNEL_PART_NAME;
	parts[0].offset = 0;
	parts[0].size = kernel_size;

	parts[1].name = ROOTFS_PART_NAME;
	parts[1].offset = rootfs_offset;
	parts[1].size = master->size - rootfs_offset;

	*pparts = parts;
	return EVA_NR_PARTS;
}