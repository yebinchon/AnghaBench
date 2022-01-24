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
struct mtd_partition {scalar_t__ offset; int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {scalar_t__ size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ROOTFS_SPLIT_NAME ; 
 struct mtd_partition* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mtd_info*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct mtd_info*) ; 
 scalar_t__ FUNC3 (size_t,struct mtd_info*) ; 
 struct mtd_info* FUNC4 (struct mtd_info*) ; 
 size_t FUNC5 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct mtd_info *master,
			const struct mtd_partition **pparts,
			struct mtd_part_parser_data *data)
{
	struct mtd_partition *part;
	struct mtd_info *parent_mtd;
	size_t part_offset;
	size_t squashfs_len;
	int err;

	err = FUNC1(master, 0, &squashfs_len);
	if (err)
		return err;

	parent_mtd = FUNC4(master);
	part_offset = FUNC5(master);

	part = FUNC0(sizeof(*part), GFP_KERNEL);
	if (!part) {
		FUNC6("unable to allocate memory for \"%s\" partition\n",
			 ROOTFS_SPLIT_NAME);
		return -ENOMEM;
	}

	part->name = ROOTFS_SPLIT_NAME;
	part->offset = FUNC3(part_offset + squashfs_len,
					 parent_mtd) - part_offset;
	part->size = FUNC2(master->size - part->offset, master);

	*pparts = part;
	return 1;
}