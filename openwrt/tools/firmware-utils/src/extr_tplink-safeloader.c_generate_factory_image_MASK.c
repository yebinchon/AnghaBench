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
typedef  void uint8_t ;
struct image_partition_entry {scalar_t__ size; scalar_t__ name; } ;
struct device_info {int /*<<< orphan*/  partitions; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,struct image_partition_entry const*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void * FUNC8(struct device_info *info, const struct image_partition_entry *parts, size_t *len) {
	*len = 0x1814;

	size_t i;
	for (i = 0; parts[i].name; i++)
		*len += parts[i].size;

	uint8_t *image = FUNC1(*len);
	if (!image)
		FUNC0(1, errno, "malloc");

	FUNC3(image, 0xff, *len);
	FUNC4(image, *len);

	if (info->vendor) {
		size_t vendor_len = FUNC7(info->vendor);
		FUNC4(image+0x14, vendor_len);
		FUNC2(image+0x18, info->vendor, vendor_len);
	}

	FUNC6(image + 0x1014, info->partitions, parts);
	FUNC5(image+0x04, image+0x14, *len-0x14);

	return image;
}