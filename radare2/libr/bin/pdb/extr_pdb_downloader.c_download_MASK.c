#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct SPDBDownloader {TYPE_1__* opt; } ;
struct TYPE_2__ {char* dbg_file; char* symbol_store_path; char* guid; char* user_agent; char* symbol_server; scalar_t__ extract; } ;
typedef  TYPE_1__ SPDBDownloaderOpt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  R_SYS_DIR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char const*,char const*,char*,char*,...) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct SPDBDownloader *pd) {
	SPDBDownloaderOpt *opt = pd->opt;
	char *curl_cmd = NULL;
	char *extractor_cmd = NULL;
	char *abspath_to_archive = NULL;
	char *archive_name = NULL;
	size_t archive_name_len = 0;
	char *symbol_store_path = NULL;
	char *dbg_file = NULL;
	char *guid = NULL;
	char *archive_name_escaped  = NULL;
	char *user_agent = NULL;
	char *symbol_server = NULL;

	int res = 0;
	int cmd_ret;
	if (!opt->dbg_file || !*opt->dbg_file) {
		// no pdb debug file
		return 0;
	}
	if (!FUNC1 ()) {
		return 0;
	}
	// dbg_file len is > 0
	archive_name_len = FUNC12 (opt->dbg_file);
	archive_name = FUNC4 (archive_name_len + 1);
	if (!archive_name) {
		return 0;
	}
	FUNC5 (archive_name, opt->dbg_file, archive_name_len + 1);
	archive_name[archive_name_len - 1] = '_';
	symbol_store_path = FUNC8 (opt->symbol_store_path);
	dbg_file = FUNC8 (opt->dbg_file);
	guid = FUNC8 (opt->guid);
	archive_name_escaped = FUNC8 (archive_name);
	user_agent = FUNC8 (opt->user_agent);
	symbol_server = FUNC8 (opt->symbol_server);

	if (FUNC2 () || opt->extract == 0) {
		res = 1;
		abspath_to_archive = FUNC9 ("%s%s%s%s%s%s%s",
						    symbol_store_path, R_SYS_DIR,
						    dbg_file, R_SYS_DIR,
						    guid, R_SYS_DIR,
						    archive_name_escaped);

		curl_cmd = FUNC9 ("curl -sfLA \"%s\" \"%s/%s/%s/%s\" --create-dirs -o \"%s\"",
		                       user_agent,
		                       symbol_server,
							   dbg_file,
							   guid,
		                       archive_name_escaped,
		                       abspath_to_archive);
#if __WINDOWS__
		const char *cabextractor = "expand";
		const char *format = "%s %s %s";
		char *abspath_to_file = strdup (abspath_to_archive);
		abspath_to_file[strlen (abspath_to_file) - 1] = 'b';

		// extractor_cmd -> %1 %2 %3
		// %1 - 'expand'
		// %2 - absolute path to archive
		// %3 - absolute path to file that will be dearchive
		extractor_cmd = r_str_newf (format, cabextractor,
			abspath_to_archive, abspath_to_file);
#else
		const char *cabextractor = "cabextract";
		const char *format = "%s -d \"%s\" \"%s\"";
		char *abspath_to_dir = FUNC6 (abspath_to_archive);
		// cabextract -d %1 %2
		// %1 - path to directory where to extract all files from cab archive
		// %2 - absolute path to cab archive
		extractor_cmd = FUNC9 (format, cabextractor, abspath_to_dir, abspath_to_archive);
		FUNC0 (abspath_to_dir);
#endif
		FUNC3 ("Attempting to download compressed pdb in %s\n",abspath_to_archive);
		if ((cmd_ret = FUNC10 (curl_cmd) != 0)) {
			FUNC3("curl exited with error %d\n", cmd_ret);
			res = 0;
		}
		FUNC3 ("Attempting to decompress pdb\n");
		if (opt->extract > 0) {
			if (res && ((cmd_ret = FUNC10 (extractor_cmd)) != 0)) {
				FUNC3 ("cab extractor exited with error %d\n", cmd_ret);
				res = 0;
			}
			FUNC7 (abspath_to_archive);
		}
		FUNC0 (curl_cmd);
		FUNC0 (abspath_to_archive);
	}
	if (res == 0) {
		FUNC3 ("Falling back to uncompressed pdb\n");
		res = 1;
		archive_name[archive_name_len - 1] = 'b';
		FUNC0 (archive_name_escaped);
		archive_name_escaped = FUNC8 (archive_name);
		abspath_to_archive = FUNC9("%s%s%s%s%s%s%s",
		    symbol_store_path, R_SYS_DIR,
		    dbg_file, R_SYS_DIR,
		    guid, R_SYS_DIR,
		    archive_name_escaped);

		curl_cmd = FUNC9 ("curl -sfLA \"%s\" \"%s/%s/%s/%s\" --create-dirs -o \"%s\"",
		                       opt->user_agent,
		                       opt->symbol_server,
		                       opt->dbg_file,
		                       opt->guid,
		                       archive_name_escaped,
		                       abspath_to_archive);
		FUNC3 ("Attempting to download uncompressed pdb in %s\n",abspath_to_archive);
		if ((cmd_ret = FUNC10 (curl_cmd) != 0)) {
			FUNC3("curl exited with error %d\n", cmd_ret);
			res = 0;
		}
		FUNC0 (curl_cmd);
		FUNC0 (abspath_to_archive);
	}
	FUNC0 (archive_name);
	FUNC0 (extractor_cmd);
	FUNC0 (symbol_store_path);
	FUNC0 (dbg_file);
	FUNC0 (guid);
	FUNC0 (archive_name_escaped);
	FUNC0 (user_agent);
	FUNC0 (symbol_server);
	return res;
}