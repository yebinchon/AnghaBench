#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut32 ;
struct TYPE_3__ {char* string; } ;
typedef  int /*<<< orphan*/  RListFree ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  TYPE_1__ RBinString ;
typedef  int /*<<< orphan*/  RBinSection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ r_bin_section_free ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  stringsBeginAt ; 

__attribute__((used)) static RList *FUNC11(RBuffer *b, int x, int n_sections, RList *strings) {
	// eprintf ("Sections\n");
	int buf_sz = FUNC5 (b);
	char *buf = FUNC1 (buf_sz);
	if (!buf) {
		return NULL;
	}
	bool must_free = false;
	if (!strings) {
		strings = FUNC3 (b, stringsBeginAt, buf_sz);
		if (strings) {
			must_free = true;
		}
	}
	// hack
	FUNC4 (b, x, (ut8 *)buf, 4);
	if (buf[0] == '_') {
		x += 16;
	}
	RList *res = FUNC9 ((RListFree)r_bin_section_free);
	int i;
	FUNC4 (b, x, (ut8 *)buf, buf_sz);
	int off = 0;
	for (i = 0; i < n_sections; i++) {
		off = i * 16;
		if (off + 8 >= buf_sz) {
			break;
		}
		RBinString *name = strings? FUNC8 (strings, i): NULL;
		const char *namestr = name? name->string: "";
		ut32 A = FUNC10 (buf + off);
		ut32 B = FUNC10 (buf + off + 4);
		//ut32 C = r_read_le32 (buf + off + 8);
		// ut32 D = r_read_le32 (buf + off + 12);
		// eprintf ("0x%08"PFMT64x"  addr=0x%08x size=0x%08x unk=0x%08x zero=0x%08x  %s\n",
		//	(ut64)x + i + off, A, B, C, D, namestr);
		RBinSection *section = FUNC2 (namestr, A, A + B, 0);
		FUNC6 (res, section);
	}
	if (must_free) {
		FUNC7 (strings);
	}
	FUNC0 (buf);
	return res;
}