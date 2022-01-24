#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* name; char* classname; char* dname; int /*<<< orphan*/  vaddr; scalar_t__ paddr; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {TYPE_1__* bin; int /*<<< orphan*/  config; } ;
struct TYPE_10__ {char const* name; int /*<<< orphan*/ * demname; int /*<<< orphan*/ * demflag; int /*<<< orphan*/ * methflag; int /*<<< orphan*/ * methname; int /*<<< orphan*/ * classflag; int /*<<< orphan*/ * classname; void* nameflag; } ;
struct TYPE_9__ {int /*<<< orphan*/  cur; } ;
typedef  TYPE_2__ SymName ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RBinSymbol ;

/* Variables and functions */
 int MAXFLAG_LEN_DEFAULT ; 
 void* FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (char*,int /*<<< orphan*/ *,char const*) ; 
 void* FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(RCore *r, SymName *sn, RBinSymbol *sym, const char *lang) {
	int bin_demangle = lang != NULL;
	bool keep_lib = FUNC4 (r->config, "bin.demangle.libs");
	if (!r || !sym || !sym->name) {
		return;
	}
	sn->name = FUNC7 (sym->name);
	const char *pfx = FUNC1 (sym->type);
	sn->nameflag = FUNC0 (pfx, FUNC3 (sym), MAXFLAG_LEN_DEFAULT);
	if (sym->classname && sym->classname[0]) {
		sn->classname = FUNC7 (sym->classname);
		sn->classflag = FUNC6 ("sym.%s.%s", sn->classname, sn->name);
		FUNC5 (sn->classflag, MAXFLAG_LEN_DEFAULT);
		const char *name = sym->dname? sym->dname: sym->name;
		sn->methname = FUNC6 ("%s::%s", sn->classname, name);
		sn->methflag = FUNC6 ("sym.%s.%s", sn->classname, name);
		FUNC5 (sn->methflag, FUNC8 (sn->methflag));
	} else {
		sn->classname = NULL;
		sn->classflag = NULL;
		sn->methname = NULL;
		sn->methflag = NULL;
	}
	sn->demname = NULL;
	sn->demflag = NULL;
	if (bin_demangle && sym->paddr) {
		sn->demname = FUNC2 (r->bin->cur, lang, sn->name, sym->vaddr, keep_lib);
		if (sn->demname) {
			sn->demflag = FUNC0 (pfx, sn->demname, -1);
		}
	}
}