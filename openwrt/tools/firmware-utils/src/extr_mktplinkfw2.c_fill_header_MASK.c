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
struct fw_header {int kernel_la; int kernel_ep; int unk5; scalar_t__* md5sum1; int /*<<< orphan*/  ver_lo; int /*<<< orphan*/  ver_mid; int /*<<< orphan*/  ver_hi; int /*<<< orphan*/  sver_lo; int /*<<< orphan*/  sver_hi; int /*<<< orphan*/  unk4; void* unk3; void* unk2; void* boot_len; void* boot_ofs; void* rootfs_len; void* rootfs_ofs; void* kernel_len; void* kernel_ofs; void* fw_length; void* hw_ver_add; void* hw_rev; void* hw_id; scalar_t__* fw_version; void* version; } ;
struct TYPE_8__ {int hw_id; int hw_rev; int hw_ver_add; int flags; } ;
struct TYPE_7__ {int file_size; } ;
struct TYPE_6__ {int fw_max_len; } ;
struct TYPE_5__ {int file_size; } ;

/* Variables and functions */
 int FLAG_LE_KERNEL_LA_EP ; 
 TYPE_4__* board ; 
 TYPE_3__ boot_info ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  combined ; 
 int /*<<< orphan*/  fw_ver_hi ; 
 int /*<<< orphan*/  fw_ver_lo ; 
 int /*<<< orphan*/  fw_ver_mid ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__*) ; 
 int hdr_ver ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int kernel_ep ; 
 int kernel_la ; 
 int kernel_len ; 
 TYPE_2__* layout ; 
 int /*<<< orphan*/  md5salt_boot ; 
 int /*<<< orphan*/  md5salt_normal ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_header*,float,int) ; 
 TYPE_1__ rootfs_info ; 
 int rootfs_ofs ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sver_hi ; 
 int /*<<< orphan*/  sver_lo ; 
 int /*<<< orphan*/  version ; 

void FUNC7(char *buf, int len)
{
	struct fw_header *hdr = (struct fw_header *)buf;
	unsigned ver_len;

	FUNC5(hdr, '\xff', sizeof(struct fw_header));

	hdr->version = FUNC2(FUNC0(hdr_ver));
	ver_len = FUNC6(version);
	if (ver_len > (sizeof(hdr->fw_version) - 1))
		ver_len = sizeof(hdr->fw_version) - 1;

	FUNC4(hdr->fw_version, version, ver_len);
	hdr->fw_version[ver_len] = 0;

	hdr->hw_id = FUNC2(board->hw_id);
	hdr->hw_rev = FUNC2(board->hw_rev);
	hdr->hw_ver_add = FUNC2(board->hw_ver_add);

	if (boot_info.file_size == 0) {
		FUNC4(hdr->md5sum1, md5salt_normal, sizeof(hdr->md5sum1));
		hdr->boot_ofs = FUNC2(0);
		hdr->boot_len = FUNC2(0);
	} else {
		FUNC4(hdr->md5sum1, md5salt_boot, sizeof(hdr->md5sum1));
		hdr->boot_ofs = FUNC2(rootfs_ofs + rootfs_info.file_size);
		hdr->boot_len = FUNC2(rootfs_info.file_size);
	}

	hdr->kernel_la = FUNC2(kernel_la);
	hdr->kernel_ep = FUNC2(kernel_ep);
	hdr->fw_length = FUNC2(layout->fw_max_len);
	hdr->kernel_ofs = FUNC2(sizeof(struct fw_header));
	hdr->kernel_len = FUNC2(kernel_len);
	if (!combined) {
		hdr->rootfs_ofs = FUNC2(rootfs_ofs);
		hdr->rootfs_len = FUNC2(rootfs_info.file_size);
	}

	hdr->boot_ofs = FUNC2(0);
	hdr->boot_len = FUNC2(boot_info.file_size);

	hdr->unk2 = FUNC2(0);
	hdr->unk3 = FUNC2(0xffffffff);
	hdr->unk4 = FUNC3(0x55aa);
	hdr->unk5 = 0xa5;

	hdr->sver_hi = sver_hi;
	hdr->sver_lo = sver_lo;

	hdr->ver_hi = fw_ver_hi;
	hdr->ver_mid = fw_ver_mid;
	hdr->ver_lo = fw_ver_lo;

	if (board->flags & FLAG_LE_KERNEL_LA_EP) {
		hdr->kernel_la = FUNC0(hdr->kernel_la);
		hdr->kernel_ep = FUNC0(hdr->kernel_ep);
	}

	FUNC1(buf, len, hdr->md5sum1);
}