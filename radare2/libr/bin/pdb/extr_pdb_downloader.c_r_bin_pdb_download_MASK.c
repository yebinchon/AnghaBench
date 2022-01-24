#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  guid; int /*<<< orphan*/  debug_file_name; } ;
struct TYPE_16__ {int /*<<< orphan*/  bin; } ;
struct TYPE_15__ {int (* download ) (TYPE_3__*) ;} ;
struct TYPE_14__ {char* dbg_file; int /*<<< orphan*/  extract; int /*<<< orphan*/  symbol_store_path; scalar_t__ user_agent; scalar_t__ symbol_server; int /*<<< orphan*/  guid; } ;
struct TYPE_13__ {int /*<<< orphan*/  extract; int /*<<< orphan*/  symbol_store_path; scalar_t__ user_agent; scalar_t__ symbol_server; } ;
typedef  TYPE_1__ SPDBOptions ;
typedef  TYPE_2__ SPDBDownloaderOpt ;
typedef  TYPE_3__ SPDBDownloader ;
typedef  TYPE_4__ RCore ;
typedef  TYPE_5__ RBinInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,...) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*) ; 

int FUNC7(RCore *core, int isradjson, int *actions_done, SPDBOptions *options) {
	int ret;
	SPDBDownloaderOpt opt;
	SPDBDownloader pdb_downloader;
	RBinInfo *info = FUNC4 (core->bin);

	if (!info || !info->debug_file_name) {
		FUNC1 ("Can't find debug filename\n");
		return 1;
	}

	if (!options || !options->symbol_server || !options->user_agent) {
		FUNC1 ("Can't retrieve pdb configurations\n");
		return 1;
	}

	opt.dbg_file = (char*) FUNC5 (info->debug_file_name);
	opt.guid = info->guid;
	opt.symbol_server = options->symbol_server;
	opt.user_agent = options->user_agent;
	opt.symbol_store_path = options->symbol_store_path;
	opt.extract = options->extract;

	FUNC2 (&opt, &pdb_downloader);
	ret = pdb_downloader.download ? pdb_downloader.download (&pdb_downloader) : 0;
	if (isradjson && actions_done) {
		FUNC3 ("%s\"pdb\":{\"file\":\"%s\",\"download\":%s}",
		        *actions_done ? "," : "", opt.dbg_file, ret ? "true" : "false");
	} else {
		FUNC3 ("PDB \"%s\" download %s\n",
		        opt.dbg_file, ret ? "success" : "failed");
	}
	if (actions_done) {
		(*actions_done)++;
	}
	FUNC0 (&pdb_downloader);

	return 0;
}