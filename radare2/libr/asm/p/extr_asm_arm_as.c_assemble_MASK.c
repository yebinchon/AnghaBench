#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int bits; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  TYPE_2__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  ARM32_AS ; 
 int /*<<< orphan*/  ARM64_AS ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int FUNC5 (char*,int,int) ; 
 char* FUNC6 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (int,int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(RAsm *a, RAsmOp *op, const char *buf) {
	const char *bitconfig = "";
	char *ipath, *opath;
	char *as = NULL;

	int ifd = FUNC3 ("r_as", &ipath);
	if (ifd == -1) {
		return -1;
	}

	int ofd = FUNC3 ("r_as", &opath);
	if (ofd == -1) {
		FUNC2 (ipath);
		return -1;
	}

	as = FUNC9 ("ARM_AS");
	if (!as || !*as) {
		FUNC2 (as);
		if (a->bits == 64) {
			as = FUNC11 (ARM64_AS);
		} else {
			as = FUNC11 (ARM32_AS);
		}
	}
	if (a->bits == 16) {
		bitconfig = ".thumb";
	}

	char *asm_buf = FUNC6 ("%s\n" //.org 0x%"PFMT64x"\n"
			".ascii \"BEGINMARK\"\n"
			"%s\n"
			".ascii \"ENDMARK\"\n",
			bitconfig, buf); // a->pc ??
	if (asm_buf) {
		(void)FUNC14 (ifd, asm_buf, FUNC12 (asm_buf));
		(void)FUNC0 (ifd);
		FUNC2 (asm_buf);
	}

	int len = 0;
	if (!FUNC8 ("%s %s -o %s", as, ipath, opath)) {
		const ut8 *begin, *end;
		FUNC0 (ofd);
		ofd = FUNC5 (opath, O_BINARY|O_RDONLY, 0644);
		if (ofd < 0) {
			FUNC2 (as);
			FUNC2 (ipath);
			FUNC2 (opath);
			return -1;
		}
		ut8 buf[4096];
		len = FUNC10 (ofd, buf, sizeof (buf));
		begin = FUNC4 (buf, len, (const ut8*)"BEGINMARK", 9);
		end = FUNC4 (buf, len, (const ut8*)"ENDMARK", 7);
		if (!begin || !end) {
			FUNC1 ("Cannot find water marks\n");
			len = 0;
		} else {
			len = (int)(size_t)(end - begin - 9);
			if (len > 0) {
				FUNC7 (&op->buf, begin + 9, len);
			} else {
				len = 0;
			}
		}
	} else {
		FUNC1 ("Error running: %s %s -o %s", as, ipath, opath);
		FUNC1 ("export PATH=~/NDK/toolchains/arm-linux*/prebuilt/darwin-arm_64/bin\n");
	}

	FUNC0 (ofd);

	FUNC13 (ipath);
	FUNC13 (opath);
	FUNC2 (ipath);
	FUNC2 (opath);
	FUNC2 (as);

	return op->size = len;
}