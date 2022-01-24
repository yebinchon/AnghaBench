#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  namefmt ;
struct TYPE_5__ {int /*<<< orphan*/  (* cb_printf ) (char*,char const*) ;int /*<<< orphan*/  sdb_types; int /*<<< orphan*/  formats; } ;
typedef  TYPE_1__ RPrint ;

/* Variables and functions */
 scalar_t__ MUSTSEE ; 
 int NESTDEPTH ; 
 int /*<<< orphan*/  SEEVALUE ; 
 int STRUCTFLAG ; 
 int STRUCTPTR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char const*,int,char const*,char*) ; 
 int FUNC2 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static int FUNC9(RPrint* p, ut64 seek, const ut8* b, int len, const char *name,
		int slide, int mode, const char *setval, char *field, int anon) {
	const char *fmt;
	char namefmt[128];
	slide++;
	if ((slide % STRUCTPTR) > NESTDEPTH || (slide % STRUCTFLAG)/STRUCTPTR > NESTDEPTH) {
		FUNC0 ("Too much nested struct, recursion too deep...\n");
		return 0;
	}
	if (anon) {
		fmt = name;
	} else {
		fmt = FUNC4 (p->formats, name, NULL);
		if (!fmt) { // Fetch struct info from types DB
			fmt = FUNC3 (p->sdb_types, name);
		}
	}
	if (!fmt || !*fmt) {
		FUNC0 ("Undefined struct '%s'.\n", name);
		return 0;
	}
	if (MUSTSEE && !SEEVALUE) {
		FUNC5 (namefmt, sizeof (namefmt), "%%%ds", 10+6*slide%STRUCTPTR);
		if (fmt[0] == '0') {
			p->cb_printf (namefmt, "union");
		} else {
			p->cb_printf (namefmt, "struct");
		}
		p->cb_printf ("<%s>\n", name);
	}
	FUNC1 (p, seek, b, len, fmt, mode, setval, field);
	return FUNC2 (p, fmt, mode, 0);
}