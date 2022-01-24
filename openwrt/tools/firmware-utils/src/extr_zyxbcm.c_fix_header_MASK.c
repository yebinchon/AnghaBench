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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct zyxbcm_tag {int /*<<< orphan*/ * headerCRC; int /*<<< orphan*/ * fskernelCRC; int /*<<< orphan*/ * flashImageEnd; int /*<<< orphan*/ * reserved1; scalar_t__* information1; } ;
struct bcm_tag {int /*<<< orphan*/ * fskernelCRC; int /*<<< orphan*/  kernelLength; int /*<<< orphan*/  flashRootLength; int /*<<< orphan*/  flashImageStart; } ;

/* Variables and functions */
 int ADDRESS_LEN ; 
 int CRC_LEN ; 
 int /*<<< orphan*/  IMAGETAG_CRC_START ; 
 int ZYX_TAGINFO1_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC6(void *buf)
{
	struct bcm_tag *bcmtag = buf;
	struct zyxbcm_tag *zyxtag = buf;
	uint8_t fskernel_crc[CRC_LEN];
	uint32_t crc;
	uint64_t flash_start, rootfs_len, kernel_len;

	/* Backup values */
	flash_start = FUNC5(bcmtag->flashImageStart, NULL, 10);
	rootfs_len = FUNC5(bcmtag->flashRootLength, NULL, 10);
	kernel_len = FUNC5(bcmtag->kernelLength, NULL, 10);
	FUNC2(fskernel_crc, bcmtag->fskernelCRC, CRC_LEN);

	/* Clear values */
	zyxtag->information1[ZYX_TAGINFO1_LEN - 1] = 0;
	FUNC3(zyxtag->flashImageEnd, 0, ADDRESS_LEN);
	FUNC3(zyxtag->fskernelCRC, 0, CRC_LEN);
	FUNC3(zyxtag->reserved1, 0, 2);

	/* Replace values */
	FUNC4(zyxtag->flashImageEnd, "%lu", flash_start + rootfs_len + kernel_len);
	FUNC2(zyxtag->fskernelCRC, fskernel_crc, CRC_LEN);

	/* Update tag crc */
	crc = FUNC1(FUNC0(IMAGETAG_CRC_START, buf, 236));
	FUNC2(zyxtag->headerCRC, &crc, 4);
}