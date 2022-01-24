#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int fw_max_len; } ;
struct TYPE_5__ {int file_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ add_jffs2_eof ; 
 scalar_t__ combined ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ kernel_info ; 
 size_t kernel_len ; 
 TYPE_3__* layout ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  ofname ; 
 int FUNC5 (char*,int,int) ; 
 int FUNC6 (TYPE_1__*,char*) ; 
 TYPE_1__ rootfs_info ; 
 int rootfs_ofs ; 
 int /*<<< orphan*/  strip_padding ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC8(size_t header_size)
{
	int buflen;
	char *buf;
	char *p;
	int ret = EXIT_FAILURE;
	int writelen = 0;

	writelen = header_size + kernel_len;

	if (combined)
		buflen = writelen;
	else
		buflen = layout->fw_max_len;

	buf = FUNC3(buflen);
	if (!buf) {
		FUNC0("no memory for buffer\n");
		goto out;
	}

	FUNC4(buf, 0xff, buflen);
	p = buf + header_size;
	ret = FUNC6(&kernel_info, p);
	if (ret)
		goto out_free_buf;

	if (!combined) {
		p = buf + rootfs_ofs;

		ret = FUNC6(&rootfs_info, p);
		if (ret)
			goto out_free_buf;

		writelen = rootfs_ofs + rootfs_info.file_size;

		if (add_jffs2_eof)
			writelen = FUNC5(buf, writelen, layout->fw_max_len);
	}

	if (!strip_padding)
		writelen = buflen;

	FUNC1(buf, writelen);
	ret = FUNC7(ofname, buf, writelen);
	if (ret)
		goto out_free_buf;

	ret = EXIT_SUCCESS;

out_free_buf:
	FUNC2(buf);
out:
	return ret;
}