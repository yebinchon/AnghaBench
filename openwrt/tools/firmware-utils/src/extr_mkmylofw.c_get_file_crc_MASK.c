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
typedef  size_t uint32_t ;
struct fw_block {int flags; size_t size; int /*<<< orphan*/  crc; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BLOCK_FLAG_HAVEHDR ; 
 int FILE_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 

int
FUNC5(struct fw_block *ff)
{
	FILE *f;
	uint8_t buf[FILE_BUF_LEN];
	uint32_t readlen = sizeof(buf);
	int res = -1;
	size_t len;

	if ((ff->flags & BLOCK_FLAG_HAVEHDR) == 0) {
		res = 0;
		goto out;
	}

	errno = 0;
	f = FUNC2(ff->name,"r");
	if (errno) {
		FUNC0(1,"unable to open file %s", ff->name);
		goto out;
	}

	ff->crc = 0;
	len = ff->size;
	while (len > 0) {
		if (len < readlen)
			readlen = len;

		errno = 0;
		FUNC3(buf, readlen, 1, f);
		if (errno) {
			FUNC0(1,"unable to read from file %s",	ff->name);
			goto out_close;
		}

		FUNC4(buf, readlen, &ff->crc);
		len -= readlen;
	}

	res = 0;

out_close:
	FUNC1(f);
out:
	return res;
}