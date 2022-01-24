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
struct csys_block {size_t file_size; int /*<<< orphan*/  css; int /*<<< orphan*/ * file_name; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int ERR_FATAL ; 
 int FILE_BUF_LEN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 

int
FUNC5(FILE *outfile, struct csys_block *block)
{
	char buf[FILE_BUF_LEN];
	size_t buflen = sizeof(buf);
	FILE *f;
	size_t len;
	int res;

	if (block->file_name == NULL)
		return 0;

	if (block->file_size == 0)
		return 0;

	errno = 0;
	f = FUNC2(block->file_name,"r");
	if (errno) {
		FUNC0("unable to open file: %s", block->file_name);
		return ERR_FATAL;
	}

	len = block->file_size;
	while (len > 0) {
		if (len < buflen)
			buflen = len;

		/* read data from source file */
		errno = 0;
		FUNC3(buf, buflen, 1, f);
		if (errno != 0) {
			FUNC0("unable to read from file: %s", block->file_name);
			res = ERR_FATAL;
			break;
		}

		res = FUNC4(outfile, buf, buflen, block->css);
		if (res)
			break;

		len -= buflen;
	}

	FUNC1(f);
	return res;
}