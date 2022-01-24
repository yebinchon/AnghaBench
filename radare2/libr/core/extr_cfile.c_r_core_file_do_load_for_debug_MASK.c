#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_33__ {int /*<<< orphan*/  file; } ;
struct TYPE_32__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  arch; } ;
struct TYPE_31__ {TYPE_6__* info; } ;
struct TYPE_30__ {int xtr_idx; } ;
struct TYPE_29__ {char* name; } ;
struct TYPE_28__ {TYPE_17__* bin; int /*<<< orphan*/  config; int /*<<< orphan*/  io; int /*<<< orphan*/  dbg; } ;
struct TYPE_27__ {int fd; } ;
struct TYPE_26__ {void* maxstrbuf; void* minstrlen; } ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  TYPE_1__ RCoreFile ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RBinPlugin ;
typedef  TYPE_4__ RBinOptions ;
typedef  TYPE_5__ RBinObject ;
typedef  TYPE_6__ RBinInfo ;
typedef  TYPE_7__ RBinFile ;

/* Variables and functions */
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 TYPE_7__* FUNC2 (TYPE_17__*) ; 
 TYPE_5__* FUNC3 (TYPE_17__*) ; 
 TYPE_3__* FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_17__*,char const*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC21(RCore *r, ut64 baseaddr, const char *filenameuri) {
	RCoreFile *cf = FUNC13 (r);
	RIODesc *desc = cf ? FUNC15 (r->io, cf->fd) : NULL;
	RBinFile *binfile = NULL;
	RBinPlugin *plugin;
	int xtr_idx = 0; // if 0, load all if xtr is used

	// TODO : Honor file.path eval var too?
	if (!FUNC20 ("dbg://", filenameuri, 6)) {
		filenameuri += 6;
	}
	if (!desc) {
		return false;
	}
	if (cf) {
		FUNC14 (r->dbg, FUNC16 (r->io, cf->fd),
				FUNC17 (r->io, cf->fd));
	}
#if !__linux__
#if !__WINDOWS__
	baseaddr = get_base_from_maps (r, filenameuri);
#endif
	if (baseaddr != UT64_MAX) {
		r_config_set_i (r->config, "bin.baddr", baseaddr);
	}
#endif
	int fd = cf? cf->fd: -1;
	RBinOptions opt;
	FUNC6 (&opt, fd, baseaddr, UT64_MAX, false);
	opt.xtr_idx = xtr_idx;
	if (!FUNC5 (r->bin, filenameuri, &opt)) {
		FUNC0 ("RBinLoad: Cannot open %s\n", filenameuri);
		if (FUNC8 (r->config, "bin.rawstr")) {
			FUNC6 (&opt, fd, baseaddr, UT64_MAX, true);
			opt.xtr_idx = xtr_idx;
			if (!FUNC5 (r->bin, filenameuri, &opt)) {
				return false;
			}
		}
	}

	if (*FUNC7 (r->config, "dbg.libs")) {
		FUNC12 (r, ".dmm*");
#if __linux__
		FUNC18 (r, "dbg.libs", "sym.imp.dlopen");
		FUNC18 (r, "dbg.libs", "sym.imp.dlmopen");
		FUNC18 (r, "dbg.unlibs", "sym.imp.dlclose");
#elif __APPLE__
		setbpint (r, "dbg.libs", "sym._dlopen");
		setbpint (r, "dbg.libs", "sym._dlclose");
#endif
	}
	binfile = FUNC2 (r->bin);
	FUNC11 (r, binfile);
	plugin = FUNC4 (binfile);
	if (plugin && !FUNC20 (plugin->name, "any", 5)) {
		// set use of raw strings
		// r_config_set_i (r->config, "io.va", false);
		//\\ r_config_set (r->config, "bin.rawstr", "true");
		// get bin.minstr
		r->bin->minstrlen = FUNC8 (r->config, "bin.minstr");
		r->bin->maxstrbuf = FUNC8 (r->config, "bin.maxstrbuf");
	} else if (binfile) {
		RBinObject *obj = FUNC3 (r->bin);
		RBinInfo *info = obj? obj->info: NULL;
		if (plugin && FUNC19 (plugin->name, "any") && info) {
			FUNC10 (r, binfile->file, info->arch, info->bits);
		}
	}

	if (plugin && !FUNC19 (plugin->name, "dex")) {
		FUNC12 (r, "\"(fix-dex,wx `ph sha1 $s-32 @32` @12 ; wx `ph adler32 $s-12 @12` @8)\"\n");
	}

	return true;
}