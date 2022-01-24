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

/* Variables and functions */
#define  LZMA_RESULT_DATA_ERROR 128 
 int LZMA_RESULT_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int kernel_la ; 
 int FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  lzma_outsize ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(unsigned long reg_a0, unsigned long reg_a1,
		 unsigned long reg_a2, unsigned long reg_a3)
{
	void (*kernel_entry) (unsigned long, unsigned long, unsigned long,
			      unsigned long);
	int res;

	FUNC0();

	FUNC6("\n\nOpenWrt kernel loader for BCM63XX\n");
	FUNC6("Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>\n");
	FUNC6("Copyright (C) 2014 Jonas Gorski <jogo@openwrt.org>\n");

	FUNC4();

	res = FUNC5();
	if (res != LZMA_RESULT_OK) {
		FUNC6("Incorrect LZMA stream properties!\n");
		FUNC2();
	}

	FUNC6("Decompressing kernel... ");

	res = FUNC3((unsigned char *) kernel_la);
	if (res != LZMA_RESULT_OK) {
		FUNC6("failed, ");
		switch (res) {
		case LZMA_RESULT_DATA_ERROR:
			FUNC6("data error!\n");
			break;
		default:
			FUNC6("unknown error %d!\n", res);
		}
		FUNC2();
	} else {
		FUNC6("done!\n");
	}

	FUNC1(kernel_la, lzma_outsize);

	FUNC6("Starting kernel at %08x...\n\n", kernel_la);

	kernel_entry = (void *) kernel_la;
	kernel_entry(reg_a0, reg_a1, reg_a2, reg_a3);
}