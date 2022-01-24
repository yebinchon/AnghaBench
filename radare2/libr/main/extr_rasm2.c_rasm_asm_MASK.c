#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int ut32 ;
struct TYPE_9__ {int len; int* bytes; } ;
struct TYPE_8__ {int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ RAsmState ;
typedef  TYPE_2__ RAsmCode ;

/* Variables and functions */
 int /*<<< orphan*/  R_SYS_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 char* FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int*,int) ; 

__attribute__((used)) static int FUNC10(RAsmState *as, const char *buf, ut64 offset, ut64 len, int bits, int bin, bool use_spp, bool hexwords) {
	RAsmCode *acode;
	int i, j, ret = 0;
	FUNC7 (as->a, offset);
	if (!(acode = FUNC6 (as->a, buf, use_spp))) {
		return 0;
	}
	if (acode->len) {
		ret = acode->len;
		if (bin) {
			if ((ret = FUNC9 (1, acode->bytes, acode->len)) != acode->len) {
				FUNC0 ("Failed to write buffer\n");
				FUNC4 (acode);
				return 0;
			}
		} else {
			int b = acode->len;
			if (bits == 1) {
				int bytes = (b / 8) + 1;
				for (i = 0; i < bytes; i++) {
					for (j = 0; j < 8 && b--; j++) {
						FUNC3 ("%c", (acode->bytes[i] & (1 << j))? '1': '0');
					}
				}
				FUNC3 ("\n");
			} else {
				if (hexwords) {
					size_t i = 0;
					for (i = 0; i < acode->len; i += sizeof (ut32)) {
						ut32 dword = FUNC8 (acode->bytes + i, R_SYS_ENDIAN);
						FUNC3 ("0x%08x ", dword);
						if ((i/4) == 7) {
							FUNC3 ("\n");
						}
					}
					FUNC3 ("\n");
				} else {
					char* str = FUNC5 (acode);
					if (str) {
						FUNC2 (as, str);
						FUNC1 (str);
					}
				}
			}
		}
	}
	FUNC4 (acode);
	return (ret > 0);
}