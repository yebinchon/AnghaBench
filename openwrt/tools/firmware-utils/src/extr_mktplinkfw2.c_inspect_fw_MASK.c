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
typedef  int /*<<< orphan*/  uint8_t ;
struct fw_header {int kernel_la; int kernel_ep; int version; int boot_len; int unk2; int unk3; int unk4; int unk5; char* fw_version; int hw_id; int hw_rev; int hw_ver_add; int ver_hi; int ver_mid; int ver_lo; int sver_hi; int sver_lo; int kernel_ofs; int kernel_len; int rootfs_ofs; int rootfs_len; int boot_ofs; int fw_length; int /*<<< orphan*/ * md5sum2; int /*<<< orphan*/ * md5sum1; } ;
struct board_info {int flags; } ;
typedef  int /*<<< orphan*/  md5sum ;
struct TYPE_3__ {int file_size; char* file_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EXIT_FAILURE ; 
 int FLAG_LE_KERNEL_LA_EP ; 
 int MD5SUM_LEN ; 
 int FUNC1 (int) ; 
 struct board_info custom_board ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ extract ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 TYPE_1__ inspect_info ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/ * md5salt_boot ; 
 int /*<<< orphan*/ * md5salt_normal ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int FUNC17 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (char*) ; 

__attribute__((used)) static int FUNC21(void)
{
	char *buf;
	struct fw_header *hdr;
	uint8_t md5sum[MD5SUM_LEN];
	struct board_info *board;
	int ret = EXIT_FAILURE;

	buf = FUNC11(inspect_info.file_size);
	if (!buf) {
		FUNC0("no memory for buffer!\n");
		goto out;
	}

	ret = FUNC17(&inspect_info, buf);
	if (ret)
		goto out_free_buf;
	hdr = (struct fw_header *)buf;

	board = &custom_board;

	if (board->flags & FLAG_LE_KERNEL_LA_EP) {
		hdr->kernel_la = FUNC1(hdr->kernel_la);
		hdr->kernel_ep = FUNC1(hdr->kernel_ep);
	}

	FUNC10("File name", inspect_info.file_name);
	FUNC8("File size", inspect_info.file_size);

	switch(FUNC1(FUNC14(hdr->version))) {
	case 2:
	case 3:
		break;
	default:
		FUNC0("file does not seem to have V2/V3 header!\n");
		goto out_free_buf;
	}

	FUNC8("Version 2 Header size", sizeof(struct fw_header));

	FUNC13(md5sum, hdr->md5sum1, sizeof(md5sum));
	if (FUNC14(hdr->boot_len) == 0)
		FUNC13(hdr->md5sum1, md5salt_normal, sizeof(md5sum));
	else
		FUNC13(hdr->md5sum1, md5salt_boot, sizeof(md5sum));
	FUNC6(buf, inspect_info.file_size, hdr->md5sum1);

	if (FUNC12(md5sum, hdr->md5sum1, sizeof(md5sum))) {
		FUNC9("Header MD5Sum1", md5sum, "(*ERROR*)");
		FUNC9("          --> expected", hdr->md5sum1, "");
	} else {
		FUNC9("Header MD5Sum1", md5sum, "(ok)");
	}
	if (FUNC14(hdr->unk2) != 0)
		FUNC8("Unknown value 2", hdr->unk2);
	FUNC9("Header MD5Sum2", hdr->md5sum2,
	                   "(purpose yet unknown, unchecked here)");

	if (FUNC14(hdr->unk3) != 0xffffffff)
		FUNC8("Unknown value 3", hdr->unk3);

	if (FUNC15(hdr->unk4) != 0x55aa)
		FUNC8("Unknown value 4", hdr->unk4);

	if (hdr->unk5 != 0xa5)
		FUNC8("Unknown value 5", hdr->unk5);

	FUNC16("\n");

	FUNC10("Firmware version", hdr->fw_version);
	FUNC7("Hardware ID", FUNC14(hdr->hw_id));
	FUNC7("Hardware Revision",
			FUNC14(hdr->hw_rev));
	FUNC7("Additional HW Version",
			FUNC14(hdr->hw_ver_add));

	FUNC16("%-23s: %d.%d.%d-%d.%d\n", "Software version",
	       hdr->ver_hi, hdr->ver_mid, hdr->ver_lo,
	       hdr->sver_hi, hdr->sver_lo);

	FUNC16("\n");

	FUNC8("Kernel data offset",
	                   FUNC14(hdr->kernel_ofs));
	FUNC8("Kernel data length",
	                   FUNC14(hdr->kernel_len));
	FUNC7("Kernel load address",
			FUNC14(hdr->kernel_la));
	FUNC7("Kernel entry point",
			FUNC14(hdr->kernel_ep));
	FUNC8("Rootfs data offset",
			   FUNC14(hdr->rootfs_ofs));
	FUNC8("Rootfs data length",
	                   FUNC14(hdr->rootfs_len));
	FUNC8("Boot loader data offset",
	                   FUNC14(hdr->boot_ofs));
	FUNC8("Boot loader data length",
	                   FUNC14(hdr->boot_len));
	FUNC8("Total firmware length",
	                   FUNC14(hdr->fw_length));

	if (extract) {
		FILE *fp;
		char *filename;

		FUNC16("\n");

		filename = FUNC11(FUNC20(inspect_info.file_name) + 8);
		FUNC18(filename, "%s-kernel", inspect_info.file_name);
		FUNC16("Extracting kernel to \"%s\"...\n", filename);
		fp = FUNC3(filename, "w");
		if (fp)	{
			if (!FUNC5(buf + FUNC14(hdr->kernel_ofs),
			            FUNC14(hdr->kernel_len), 1, fp)) {
				FUNC0("error in fwrite(): %s", FUNC19(errno));
			}
			FUNC2(fp);
		} else {
			FUNC0("error in fopen(): %s", FUNC19(errno));
		}
		FUNC4(filename);

		filename = FUNC11(FUNC20(inspect_info.file_name) + 8);
		FUNC18(filename, "%s-rootfs", inspect_info.file_name);
		FUNC16("Extracting rootfs to \"%s\"...\n", filename);
		fp = FUNC3(filename, "w");
		if (fp)	{
			if (!FUNC5(buf + FUNC14(hdr->rootfs_ofs),
			            FUNC14(hdr->rootfs_len), 1, fp)) {
				FUNC0("error in fwrite(): %s", FUNC19(errno));
			}
			FUNC2(fp);
		} else {
			FUNC0("error in fopen(): %s", FUNC19(errno));
		}
		FUNC4(filename);
	}

 out_free_buf:
	FUNC4(buf);
 out:
	return ret;
}