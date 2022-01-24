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
struct user_desc {int entry_number; int base_addr; int limit; int seg_32bit; int contents; int read_exec_only; int limit_in_pages; int seg_not_present; int useable; int lm; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int AR_AVL ; 
 int AR_DB ; 
 int AR_DPL3 ; 
 int AR_G ; 
 int AR_P ; 
 int AR_S ; 
 int AR_TYPE_RODATA ; 
 int AR_TYPE_RODATA_EXPDOWN ; 
 int AR_TYPE_RWDATA ; 
 int AR_TYPE_RWDATA_EXPDOWN ; 
 int AR_TYPE_XOCODE ; 
 int AR_TYPE_XOCODE_CONF ; 
 int AR_TYPE_XRCODE ; 
 int AR_TYPE_XRCODE_CONF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct user_desc*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct user_desc*,int) ; 
 int FUNC8 (struct user_desc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct user_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nerrs ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int,struct user_desc*,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
	struct user_desc desc = {
		.entry_number    = 0,
		.base_addr       = 0,
		.limit           = 10,
		.seg_32bit       = 1,
		.contents        = 2, /* Code, not conforming */
		.read_exec_only  = 0,
		.limit_in_pages  = 0,
		.seg_not_present = 0,
		.useable         = 0
	};
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE | AR_S | AR_P | AR_DB);

	desc.limit_in_pages = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE |
		      AR_S | AR_P | AR_DB | AR_G);

	FUNC2(1, 1);

	desc.entry_number = 2;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE |
		      AR_S | AR_P | AR_DB | AR_G);

	FUNC2(1, 1);

	desc.base_addr = 0xf0000000;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE |
		      AR_S | AR_P | AR_DB | AR_G);

	desc.useable = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE |
		      AR_S | AR_P | AR_DB | AR_G | AR_AVL);

	desc.seg_not_present = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE |
		      AR_S | AR_DB | AR_G | AR_AVL);

	desc.seg_32bit = 0;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE |
		      AR_S | AR_G | AR_AVL);

	desc.seg_32bit = 1;
	desc.contents = 0;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA |
		      AR_S | AR_DB | AR_G | AR_AVL);

	desc.read_exec_only = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RODATA |
		      AR_S | AR_DB | AR_G | AR_AVL);

	desc.contents = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RODATA_EXPDOWN |
		      AR_S | AR_DB | AR_G | AR_AVL);

	desc.read_exec_only = 0;
	desc.limit_in_pages = 0;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA_EXPDOWN |
		      AR_S | AR_DB | AR_AVL);

	desc.contents = 3;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE_CONF |
		      AR_S | AR_DB | AR_AVL);

	desc.read_exec_only = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XOCODE_CONF |
		      AR_S | AR_DB | AR_AVL);

	desc.read_exec_only = 0;
	desc.contents = 2;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XRCODE |
		      AR_S | AR_DB | AR_AVL);

	desc.read_exec_only = 1;

#ifdef __x86_64__
	desc.lm = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_XOCODE |
		      AR_S | AR_DB | AR_AVL);
	desc.lm = 0;
#endif

	bool entry1_okay = FUNC8(&desc, AR_DPL3 | AR_TYPE_XOCODE |
					 AR_S | AR_DB | AR_AVL);

	if (entry1_okay) {
		FUNC10("[RUN]\tTest fork\n");
		pid_t child = FUNC6();
		if (child == 0) {
			nerrs = 0;
			FUNC3(desc.entry_number, 1,
					    AR_DPL3 | AR_TYPE_XOCODE |
					    AR_S | AR_DB | AR_AVL, desc.limit,
					    true);
			FUNC2(1, 1);
			FUNC4(nerrs ? 1 : 0);
		} else {
			int status;
			if (FUNC12(child, &status, 0) != child ||
			    !FUNC1(status)) {
				FUNC10("[FAIL]\tChild died\n");
				nerrs++;
			} else if (FUNC0(status) != 0) {
				FUNC10("[FAIL]\tChild failed\n");
				nerrs++;
			} else {
				FUNC10("[OK]\tChild succeeded\n");
			}
		}

		FUNC10("[RUN]\tTest size\n");
		int i;
		for (i = 0; i < 8192; i++) {
			desc.entry_number = i;
			desc.limit = i;
			if (FUNC11(0x11, &desc, sizeof(desc)) != 0) {
				FUNC10("[FAIL]\tFailed to install entry %d\n", i);
				nerrs++;
				break;
			}
		}
		for (int j = 0; j < i; j++) {
			FUNC3(j, 1, AR_DPL3 | AR_TYPE_XOCODE |
					    AR_S | AR_DB | AR_AVL, j, false);
		}
		FUNC10("[DONE]\tSize test\n");
	} else {
		FUNC10("[SKIP]\tSkipping fork and size tests because we have no LDT\n");
	}

	/* Test entry_number too high. */
	desc.entry_number = 8192;
	FUNC5(&desc);

	/* Test deletion and actions mistakeable for deletion. */
	FUNC9(&desc, 0, sizeof(desc));
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA | AR_S | AR_P);

	desc.seg_not_present = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA | AR_S);

	desc.seg_not_present = 0;
	desc.read_exec_only = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RODATA | AR_S | AR_P);

	desc.read_exec_only = 0;
	desc.seg_not_present = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA | AR_S);

	desc.read_exec_only = 1;
	desc.limit = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RODATA | AR_S);

	desc.limit = 0;
	desc.base_addr = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RODATA | AR_S);

	desc.base_addr = 0;
	FUNC7(&desc, false);

	desc.seg_not_present = 0;
	desc.seg_32bit = 1;
	desc.read_exec_only = 0;
	desc.limit = 0xfffff;

	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA | AR_S | AR_P | AR_DB);

	desc.limit_in_pages = 1;

	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA | AR_S | AR_P | AR_DB | AR_G);
	desc.read_exec_only = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RODATA | AR_S | AR_P | AR_DB | AR_G);
	desc.contents = 1;
	desc.read_exec_only = 0;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RWDATA_EXPDOWN | AR_S | AR_P | AR_DB | AR_G);
	desc.read_exec_only = 1;
	FUNC8(&desc, AR_DPL3 | AR_TYPE_RODATA_EXPDOWN | AR_S | AR_P | AR_DB | AR_G);

	desc.limit = 0;
	FUNC7(&desc, true);
}