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
struct fw_block {int padc; scalar_t__ type; int /*<<< orphan*/  align; int /*<<< orphan*/ * file_name; } ;

/* Variables and functions */
 scalar_t__ BLOCK_TYPE_BOOTEXT ; 
 scalar_t__ BLOCK_TYPE_RAW ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MAX_ARG_COUNT ; 
 int MAX_ARG_LEN ; 
 scalar_t__ MAX_NUM_BLOCKS ; 
 struct fw_block* blocks ; 
 struct fw_block* bootext_block ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ num_blocks ; 
 int FUNC2 (char*,char*,char**) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

int
FUNC5(char ch, char *arg)
{
	char buf[MAX_ARG_LEN];
	char *argv[MAX_ARG_COUNT];
	int argc;
	char *p;
	struct fw_block *block;
	int i;

	if ( num_blocks >= MAX_NUM_BLOCKS ) {
		FUNC0("too many blocks specified");
		return -1;
	}

	block = &blocks[num_blocks++];

	/* setup default field values */
	block->padc = 0xFF;

	switch(ch) {
	case 'b':
		if (bootext_block) {
			FUNC0("only one boot extension block allowed");
			break;
		}
		block->type = BLOCK_TYPE_BOOTEXT;
		bootext_block = block;
		break;
	case 'r':
		block->type = BLOCK_TYPE_RAW;
		break;
	}

	argc = FUNC2(arg, buf, argv);

	i = 0;
	p = argv[i++];
	if (FUNC1(p)) {
		FUNC0("no file specified in %s", arg);
		return -1;
	} else {
		block->file_name = FUNC4(p);
		if (block->file_name == NULL) {
			FUNC0("not enough memory");
			return -1;
		}
	}

	if (block->type == BLOCK_TYPE_BOOTEXT)
		return 0;

	p = argv[i++];
	if (!FUNC1(p)) {
		if (FUNC3(p, &block->align) != 0) {
			FUNC0("invalid block align in %s", arg);
			return -1;
		}
	}

	return 0;
}