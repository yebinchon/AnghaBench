#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {char* checksum; } ;
typedef  TYPE_1__ tar_header ;

/* Variables and functions */
 int /*<<< orphan*/  PHP_DIR_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char*) ; 

int FUNC7(char *buf, char *fname) /* {{{ */
{
	tar_header *header = (tar_header *) buf;
	uint32_t checksum = FUNC3(header->checksum, sizeof(header->checksum));
	uint32_t ret;
	char save[sizeof(header->checksum)], *bname;

	/* assume that the first filename in a tar won't begin with <?php */
	if (!FUNC4(buf, "<?php", sizeof("<?php")-1)) {
		return 0;
	}

	FUNC0(save, header->checksum, sizeof(header->checksum));
	FUNC1(header->checksum, ' ', sizeof(header->checksum));
	ret = (checksum == FUNC2(buf, 512));
	FUNC0(header->checksum, save, sizeof(header->checksum));
	if ((bname = FUNC5(fname, PHP_DIR_SEPARATOR))) {
		fname = bname;
	}
	if (!ret && (bname = FUNC6(fname, ".tar")) && (bname[4] == '\0' || bname[4] == '.')) {
		/* probably a corrupted tar - so we will pretend it is one */
		return 1;
	}
	return ret;
}