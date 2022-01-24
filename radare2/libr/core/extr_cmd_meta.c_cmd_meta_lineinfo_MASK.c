#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
struct TYPE_12__ {TYPE_1__* cur; } ;
struct TYPE_11__ {scalar_t__ sdb_addrinfo; } ;
struct TYPE_10__ {TYPE_6__* bin; int /*<<< orphan*/  num; scalar_t__ offset; } ;
struct TYPE_9__ {int /*<<< orphan*/  sdb_addrinfo; } ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RBinFile ;

/* Variables and functions */
 scalar_t__ UT64_MAX ; 
 int FUNC0 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ filter_count ; 
 char filter_format ; 
 scalar_t__ filter_offset ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  print_addrinfo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 TYPE_3__* FUNC4 (TYPE_6__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*,char) ; 
 char* FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 

__attribute__((used)) static int FUNC14(RCore *core, const char *input) {
	int ret;
	ut64 offset = UT64_MAX; // use this as error value
	bool remove = false;
	int all = false;
	const char *p = input;
	char *file_line = NULL;
	char *pheap = NULL;

	if (*p == '?') {
		FUNC1 ("Usage: CL[.-*?] [addr] [file:line]\n");
		FUNC1 ("or: CL [addr] base64:[string]\n");
		FUNC2 (pheap);
		return 0;
	}
	if (*p == '-') {
		p++;
		remove = true;
	}
	if (*p == '.') {
		p++;
		offset = core->offset;
	}
	if (*p == ' ') {
		p = FUNC6 (p + 1);
		char *arg = FUNC11 (p, ' ');
		if (!arg) {
			offset = FUNC5 (core->num, p);
			p = "";
		}
	} else if (*p == '*') {
		p++;
		all = true;
		filter_format = '*';
	} else {
		filter_format = 0;
	}

	if (all) {
		if (remove) {
			FUNC10 (core->bin->cur->sdb_addrinfo);
		} else {
			FUNC9 (core->bin->cur->sdb_addrinfo, print_addrinfo, NULL);
		}
		FUNC2 (pheap);
		return 0;
	}

	p = FUNC6 (p);
	char *myp = FUNC12 (p);
	char *sp = FUNC11 (myp, ' ');
	if (sp) {
		*sp = 0;
		sp++;
		if (offset == UT64_MAX) {
			offset = FUNC5 (core->num, myp);
		}

		if (!FUNC13 (sp, "base64:", 7)) {
			int len = 0;
			ut8 *o = FUNC8 (sp + 7, &len);
			if (!o) {
				FUNC1 ("Invalid base64\n");
				return 0;
			}
			sp = pheap = (char *)o;
		}
		RBinFile *bf = FUNC4 (core->bin);
		ret = 0;
		if (bf && bf->sdb_addrinfo) {
			ret = FUNC0 (bf->sdb_addrinfo, sp, offset);
		} else {
			FUNC1 ("TODO: Support global SdbAddrinfo or dummy rbinfile to handlee this case\n");
		}
		FUNC2 (file_line);
		FUNC2 (myp);
		FUNC2 (pheap);
		return ret;
	}
	FUNC2 (myp);
	if (remove) {
		FUNC7 (core, offset);
	} else {
		// taken from r2 // TODO: we should move this addrinfo sdb logic into RBin.. use HT
		filter_offset = offset;
		filter_count = 0;
		FUNC9 (core->bin->cur->sdb_addrinfo, print_addrinfo, NULL);
		if (filter_count == 0) {
			FUNC3 (core, offset);
		}
	}
	FUNC2 (pheap);
	return 0;
}