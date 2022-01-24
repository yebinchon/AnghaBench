#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  opbuf ;
struct TYPE_7__ {scalar_t__ syntax; int /*<<< orphan*/  bits; } ;
struct TYPE_6__ {int size; } ;
typedef  TYPE_1__ RAsmOp ;
typedef  TYPE_2__ RAsm ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 scalar_t__ R_ASM_SYNTAX_ATT ; 
 scalar_t__ R_ASM_SYNTAX_INTEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (char*,char**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (char*,int,int) ; 
 char* FUNC7 (char*,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(RAsm *a, RAsmOp *op, const char *buf) {
	char *ipath, *opath;
	const char *syntaxstr = "";
	int len = 0;

	int ifd = FUNC4 ("r_as", &ipath);
	if (ifd == -1) {
		return -1;
	}

	int ofd = FUNC4 ("r_as", &opath);
	if (ofd == -1) {
		FUNC2 (ipath);
		FUNC0 (ifd);
		return -1;
	}

	if (a->syntax == R_ASM_SYNTAX_INTEL) {
		syntaxstr = ".intel_syntax noprefix\n";
	}

	if (a->syntax == R_ASM_SYNTAX_ATT) {
		syntaxstr = ".att_syntax\n";
	}

	char *asm_buf = FUNC7 (
			"%s.code%i\n" //.org 0x%"PFMT64x"\n"
			".ascii \"BEGINMARK\"\n"
			"%s\n"
			".ascii \"ENDMARK\"\n",
			syntaxstr, a->bits, buf); // a->pc ??
	FUNC12 (ifd, asm_buf, FUNC10 (asm_buf));
	FUNC0 (ifd);
	FUNC2 (asm_buf);

	if (!FUNC8 ("as %s -o %s", ipath, opath)) {
		const ut8 *begin, *end;
		FUNC0 (ofd);
// r_sys_cmdf ("cat %s", opath);
		ofd = FUNC6 (opath, O_BINARY|O_RDONLY, 0644);
		if (ofd < 0) {
			FUNC2 (ipath);
			FUNC2 (opath);
			return -1;
		}
		ut8 opbuf[512] = {0};
		len = FUNC9 (ofd, opbuf, sizeof (opbuf));
		begin = FUNC5 (opbuf, len, (const ut8*)"BEGINMARK", 9);
		end = FUNC5 (opbuf, len, (const ut8*)"ENDMARK", 7);
		if (!begin || !end) {
			FUNC1 ("Cannot find water marks\n");
			len = 0;
		} else {
			len = (int)(size_t)(end - begin - 9);
			if (len > 0) {
				FUNC3 (op, begin + 9, len);
			} else {
				len = 0;
			}
		}
	} else {
		FUNC1 ("Error running: as %s -o %s", ipath, opath);
		len = 0;
	}

	FUNC0 (ofd);

	FUNC11 (ipath);
	FUNC11 (opath);
	FUNC2 (ipath);
	FUNC2 (opath);

	op->size = len;
	return len;
}