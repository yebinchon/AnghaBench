#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fw_header {int dummy; } ;
struct TYPE_8__ {int rootfs_ofs; scalar_t__ fw_max_len; scalar_t__ kernel_ep; scalar_t__ kernel_la; } ;
struct TYPE_7__ {int file_size; int /*<<< orphan*/ * file_name; } ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  HEADER_VERSION_V1 ; 
 int /*<<< orphan*/  HEADER_VERSION_V2 ; 
 scalar_t__ combined ; 
 int country ; 
 scalar_t__ extract ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int fw_max_len ; 
 int fw_ver ; 
 int /*<<< orphan*/  fw_ver_hi ; 
 int /*<<< orphan*/  fw_ver_lo ; 
 int /*<<< orphan*/  fw_ver_mid ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  hdr_ver ; 
 void* hw_id ; 
 int hw_rev ; 
 TYPE_1__ inspect_info ; 
 scalar_t__ kernel_ep ; 
 TYPE_1__ kernel_info ; 
 scalar_t__ kernel_la ; 
 int kernel_len ; 
 TYPE_2__* layout ; 
 int /*<<< orphan*/ * layout_id ; 
 int /*<<< orphan*/  layouts ; 
 int /*<<< orphan*/ * ofname ; 
 int opt_hdr_ver ; 
 int /*<<< orphan*/ * opt_hw_id ; 
 int /*<<< orphan*/ * opt_hw_rev ; 
 int /*<<< orphan*/  region ; 
 scalar_t__ reserved_space ; 
 scalar_t__ rootfs_align ; 
 TYPE_1__ rootfs_info ; 
 int rootfs_ofs ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	int ret;
	int exceed_bytes;

	if (inspect_info.file_name) {
		ret = FUNC5(&inspect_info);
		if (ret)
			return ret;

		return 0;
	} else if (extract) {
		FUNC2("no firmware for inspection specified");
		return -1;
	}

	if (opt_hw_id == NULL) {
		FUNC2("hardware id not specified");
		return -1;
	}
	hw_id = FUNC7(opt_hw_id, NULL, 0);

	if (!combined && layout_id == NULL) {
		FUNC2("flash layout is not specified");
		return -1;
	}

	if (opt_hw_rev)
		hw_rev = FUNC7(opt_hw_rev, NULL, 0);
	else
		hw_rev = 1;

	if (country) {
		region = FUNC4(country);
		if (!region) {
			FUNC2("unknown region code \"%s\"", country);
			return -1;
		}
	}

	if (combined) {
		if (!kernel_la || !kernel_ep) {
			FUNC2("kernel loading address and entry point must be specified for combined image");
			return -1;
		}
	} else {
		layout = FUNC3(layouts, layout_id);
		if (layout == NULL) {
			FUNC2("unknown flash layout \"%s\"", layout_id);
			return -1;
		}

		if (!kernel_la)
			kernel_la = layout->kernel_la;
		if (!kernel_ep)
			kernel_ep = layout->kernel_ep;
		if (!rootfs_ofs)
			rootfs_ofs = layout->rootfs_ofs;

		if (reserved_space > layout->fw_max_len) {
			FUNC2("reserved space is not valid");
			return -1;
		}
	}

	if (kernel_info.file_name == NULL) {
		FUNC2("no kernel image specified");
		return -1;
	}

	ret = FUNC5(&kernel_info);
	if (ret)
		return ret;

	kernel_len = kernel_info.file_size;

	if (!combined) {
		fw_max_len = layout->fw_max_len - reserved_space;

		if (rootfs_info.file_name == NULL) {
			FUNC2("no rootfs image specified");
			return -1;
		}

		ret = FUNC5(&rootfs_info);
		if (ret)
			return ret;

		if (rootfs_align) {
			kernel_len += sizeof(struct fw_header);
			rootfs_ofs = FUNC0(kernel_len, rootfs_align);
			kernel_len -= sizeof(struct fw_header);

			FUNC1("rootfs offset aligned to 0x%u", rootfs_ofs);

			exceed_bytes = kernel_len + rootfs_info.file_size - (fw_max_len - sizeof(struct fw_header));
			if (exceed_bytes > 0) {
				FUNC2("images are too big by %i bytes", exceed_bytes);
				return -1;
			}
		} else {
			exceed_bytes = kernel_info.file_size - (rootfs_ofs - sizeof(struct fw_header));
			if (exceed_bytes > 0) {
				FUNC2("kernel image is too big by %i bytes", exceed_bytes);
				return -1;
			}

			exceed_bytes = rootfs_info.file_size - (fw_max_len - rootfs_ofs);
			if (exceed_bytes > 0) {
				FUNC2("rootfs image is too big by %i bytes", exceed_bytes);
				return -1;
			}
		}
	}

	if (ofname == NULL) {
		FUNC2("no output file specified");
		return -1;
	}

	ret = FUNC6(fw_ver, "%d.%d.%d", &fw_ver_hi, &fw_ver_mid, &fw_ver_lo);
	if (ret != 3) {
		FUNC2("invalid firmware version '%s'", fw_ver);
		return -1;
	}

	if (opt_hdr_ver == 1) {
		hdr_ver = HEADER_VERSION_V1;
	} else if (opt_hdr_ver == 2) {
		hdr_ver = HEADER_VERSION_V2;
	} else {
		FUNC2("invalid header version '%u'", opt_hdr_ver);
		return -1;
	}

	return 0;
}