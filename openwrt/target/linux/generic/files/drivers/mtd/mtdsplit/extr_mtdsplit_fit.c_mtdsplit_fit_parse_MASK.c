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
struct mtd_partition {size_t offset; size_t size; int /*<<< orphan*/  name; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {size_t size; size_t erasesize; int /*<<< orphan*/  name; } ;
struct fdt_header {int /*<<< orphan*/  totalsize; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERNEL_PART_NAME ; 
 size_t OF_DT_HEADER ; 
 int /*<<< orphan*/  ROOTFS_PART_NAME ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtd_partition* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtd_info*,size_t,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mtd_info*,size_t,size_t,size_t*,void*) ; 
 size_t FUNC4 (size_t,struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct mtd_info *mtd,
		   const struct mtd_partition **pparts,
	           struct mtd_part_parser_data *data)
{
	struct fdt_header hdr;
	size_t hdr_len, retlen;
	size_t offset;
	size_t fit_offset, fit_size;
	size_t rootfs_offset, rootfs_size;
	struct mtd_partition *parts;
	int ret;

	hdr_len = sizeof(struct fdt_header);

	/* Parse the MTD device & search for the FIT image location */
	for(offset = 0; offset + hdr_len <= mtd->size; offset += mtd->erasesize) {
		ret = FUNC3(mtd, offset, hdr_len, &retlen, (void*) &hdr);
		if (ret) {
			FUNC6("read error in \"%s\" at offset 0x%llx\n",
			       mtd->name, (unsigned long long) offset);
			return ret;
		}

		if (retlen != hdr_len) {
			FUNC6("short read in \"%s\"\n", mtd->name);
			return -EIO;
		}

		/* Check the magic - see if this is a FIT image */
		if (FUNC0(hdr.magic) != OF_DT_HEADER) {
			FUNC5("no valid FIT image found in \"%s\" at offset %llx\n",
				 mtd->name, (unsigned long long) offset);
			continue;
		}

		/* We found a FIT image. Let's keep going */
		break;
	}

	fit_offset = offset;
	fit_size = FUNC0(hdr.totalsize);

	if (fit_size == 0) {
		FUNC6("FIT image in \"%s\" at offset %llx has null size\n",
		       mtd->name, (unsigned long long) fit_offset);
		return -ENODEV;
	}

	/* Search for the rootfs partition after the FIT image */
	ret = FUNC2(mtd, fit_offset + fit_size, mtd->size,
				   &rootfs_offset, NULL);
	if (ret) {
		FUNC7("no rootfs found after FIT image in \"%s\"\n",
			mtd->name);
		return ret;
	}

	rootfs_size = mtd->size - rootfs_offset;

	parts = FUNC1(2 * sizeof(*parts), GFP_KERNEL);
	if (!parts)
		return -ENOMEM;

	parts[0].name = KERNEL_PART_NAME;
	parts[0].offset = fit_offset;
	parts[0].size = FUNC4(fit_size, mtd) + mtd->erasesize;

	parts[1].name = ROOTFS_PART_NAME;
	parts[1].offset = rootfs_offset;
	parts[1].size = rootfs_size;

	*pparts = parts;
	return 2;
}