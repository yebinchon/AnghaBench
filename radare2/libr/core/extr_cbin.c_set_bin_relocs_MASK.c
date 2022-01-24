#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_13__ {TYPE_1__* import; scalar_t__ vaddr; } ;
struct TYPE_12__ {int /*<<< orphan*/  flags; TYPE_2__* bin; int /*<<< orphan*/  anal; int /*<<< orphan*/  config; } ;
struct TYPE_11__ {char* prefix; int /*<<< orphan*/  cur; } ;
struct TYPE_10__ {char* name; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RFlagItem ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RBinReloc ;

/* Variables and functions */
 int /*<<< orphan*/  R2_SDB_FORMAT ; 
 int R_FLAG_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  R_META_TYPE_DATA ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 void* FUNC17 (char*,char*,char*,...) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 char* FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC20 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 char* FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char const*) ; 
 char* FUNC27 (char*,char const*) ; 

__attribute__((used)) static void FUNC28(RCore *r, RBinReloc *reloc, ut64 addr, Sdb **db, char **sdb_module) {
	int bin_demangle = FUNC9 (r->config, "bin.demangle");
	bool keep_lib = FUNC9 (r->config, "bin.demangle.libs");
	const char *lang = FUNC8 (r->config, "bin.lang");
	char *reloc_name, *demname = NULL;
	bool is_pe = true;
	int is_sandbox = FUNC15 (0);

	if (reloc->import && reloc->import->name[0]) {
		char str[R_FLAG_NAME_SIZE];
		RFlagItem *fi;

		if (is_pe && !is_sandbox && FUNC27 (reloc->import->name, "Ordinal")) {
			const char *TOKEN = ".dll_Ordinal_";
			char *module = FUNC25 (reloc->import->name);
			char *import = FUNC27 (module, TOKEN);

			FUNC16 (module, false);
			if (import) {
				char *filename = NULL;
				int ordinal;
				*import = 0;
				import += FUNC26 (TOKEN);
				ordinal = FUNC2 (import);
				if (!*sdb_module || FUNC24 (module, *sdb_module)) {
					FUNC21 (*db);
					*db = NULL;
					FUNC4 (*sdb_module);
					*sdb_module = FUNC25 (module);
					/* always lowercase */
					filename = FUNC20 ("%s.sdb", module);
					FUNC16 (filename, false);
					if (FUNC10 (filename)) {
						*db = FUNC22 (NULL, filename, 0);
					} else {
						const char *dirPrefix = FUNC18 (NULL);
						filename = FUNC20 (FUNC1 ("%s", R2_SDB_FORMAT, "dll", "%s.sdb"),
							dirPrefix, module);
						if (FUNC10 (filename)) {
							*db = FUNC22 (NULL, filename, 0);
						}
					}
				}
				if (*db) {
					// ordinal-1 because we enumerate starting at 0
					char *symname = FUNC19 (*db, module, ordinal - 1);  // uses sdb_get
					if (symname) {
						if (r->bin->prefix) {
							reloc->import->name = FUNC17
								("%s.%s.%s", r->bin->prefix, module, symname);
						} else {
							reloc->import->name = FUNC17
								("%s.%s", module, symname);
						}
						FUNC0 (symname);
					}
				}
			}
			FUNC4 (module);
			FUNC6 (r->anal, reloc->vaddr, 4);
			FUNC13 (r->anal, R_META_TYPE_DATA, reloc->vaddr, reloc->vaddr+4, NULL);
		}
		reloc_name = reloc->import->name;
		if (r->bin->prefix) {
			FUNC23 (str, R_FLAG_NAME_SIZE, "%s.reloc.%s", r->bin->prefix, reloc_name);
		} else {
			FUNC23 (str, R_FLAG_NAME_SIZE, "reloc.%s", reloc_name);
		}
		if (bin_demangle) {
			demname = FUNC7 (r->bin->cur, lang, str, addr, keep_lib);
			if (demname) {
				FUNC23 (str, R_FLAG_NAME_SIZE, "reloc.%s", demname);
			}
		}
		FUNC14 (str, 0);
		fi = FUNC12 (r->flags, str, addr, FUNC3 (reloc));
		if (demname) {
			char *realname;
			if (r->bin->prefix) {
				realname = FUNC20 ("%s.reloc.%s", r->bin->prefix, demname);
			} else {
				realname = FUNC20 ("reloc.%s", demname);
			}
			FUNC11 (fi, realname);
		}
		FUNC4 (demname);
	} else {
		char *reloc_name = FUNC5 (r, reloc, addr);
		if (reloc_name) {
			FUNC12 (r->flags, reloc_name, addr, FUNC3 (reloc));
		} else {
			// eprintf ("Cannot find a name for 0x%08"PFMT64x"\n", addr);
		}
	}
}