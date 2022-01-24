#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fw_header {int /*<<< orphan*/  md5sum1; void* kernel_ep; void* kernel_la; int /*<<< orphan*/  region_str2; int /*<<< orphan*/  region_str1; void* region_code; void* ver_lo; void* ver_mid; void* ver_hi; void* rootfs_ofs; void* rootfs_len; void* fw_length; void* kernel_len; void* kernel_ofs; void* hw_rev; void* hw_id; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  vendor_name; void* version; } ;
struct TYPE_8__ {scalar_t__ file_size; } ;
struct TYPE_7__ {int fw_max_len; } ;
struct TYPE_6__ {int code; int* name; } ;
struct TYPE_5__ {int file_size; } ;

/* Variables and functions */
 TYPE_4__ boot_info ; 
 void* FUNC0 (void*) ; 
 scalar_t__ combined ; 
 scalar_t__ endian_swap ; 
 int /*<<< orphan*/  fw_ver_hi ; 
 int /*<<< orphan*/  fw_ver_lo ; 
 int /*<<< orphan*/  fw_ver_mid ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int hdr_ver ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int hw_id ; 
 int hw_rev ; 
 int kernel_ep ; 
 int kernel_la ; 
 int kernel_len ; 
 TYPE_3__* layout ; 
 int /*<<< orphan*/  md5salt_boot ; 
 int /*<<< orphan*/  md5salt_normal ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_header*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* region ; 
 TYPE_1__ rootfs_info ; 
 int rootfs_ofs ; 
 scalar_t__ rootfs_ofs_calc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vendor ; 
 int /*<<< orphan*/  version ; 

void FUNC8(char *buf, int len)
{
	struct fw_header *hdr = (struct fw_header *)buf;

	FUNC5(hdr, 0, sizeof(struct fw_header));

	hdr->version = FUNC2(hdr_ver);
	FUNC7(hdr->vendor_name, vendor, sizeof(hdr->vendor_name));
	FUNC7(hdr->fw_version, version, sizeof(hdr->fw_version));
	hdr->hw_id = FUNC2(hw_id);
	hdr->hw_rev = FUNC2(hw_rev);

	hdr->kernel_la = FUNC2(kernel_la);
	hdr->kernel_ep = FUNC2(kernel_ep);
	hdr->kernel_ofs = FUNC2(sizeof(struct fw_header));
	hdr->kernel_len = FUNC2(kernel_len);

	if (!combined) {
		if (boot_info.file_size == 0)
			FUNC4(hdr->md5sum1, md5salt_normal, sizeof(hdr->md5sum1));
		else
			FUNC4(hdr->md5sum1, md5salt_boot, sizeof(hdr->md5sum1));

		hdr->fw_length = FUNC2(layout->fw_max_len);
		hdr->rootfs_ofs = FUNC2(rootfs_ofs);
		hdr->rootfs_len = FUNC2(rootfs_info.file_size);
	}

	if (combined && rootfs_ofs_calc) {
		hdr->rootfs_ofs = FUNC2(sizeof(struct fw_header) + kernel_len);
	}

	hdr->ver_hi = FUNC3(fw_ver_hi);
	hdr->ver_mid = FUNC3(fw_ver_mid);
	hdr->ver_lo = FUNC3(fw_ver_lo);

	if (region) {
		hdr->region_code = FUNC2(region->code);
		FUNC6(
			hdr->region_str1, sizeof(hdr->region_str1), "00000000;%02X%02X%02X%02X;",
			region->name[0], region->name[1], region->name[2], region->name[3]
		);
		FUNC6(
			hdr->region_str2, sizeof(hdr->region_str2), "%02X%02X%02X%02X",
			region->name[0], region->name[1], region->name[2], region->name[3]
		);
	}

	if (endian_swap) {
		hdr->kernel_la = FUNC0(hdr->kernel_la);
		hdr->kernel_ep = FUNC0(hdr->kernel_ep);
	}

	if (!combined)
		FUNC1(buf, len, hdr->md5sum1);
}