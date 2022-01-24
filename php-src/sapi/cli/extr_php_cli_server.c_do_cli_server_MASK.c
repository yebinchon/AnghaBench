#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ zend_stat_t ;
typedef  int /*<<< orphan*/  opt_struct ;
struct TYPE_5__ {scalar_t__ phpinfo_as_text; } ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  PHP_CLI_SERVER_LOG_PROCESS ; 
 int /*<<< orphan*/  PHP_VERSION ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int php_cli_server_log_level ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  php_cli_server_sigint_handler ; 
 int FUNC10 (int,char**,int /*<<< orphan*/  const*,char**,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (char const*,TYPE_1__*) ; 
 TYPE_2__ sapi_module ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(int argc, char **argv) /* {{{ */
{
	char *php_optarg = NULL;
	int php_optind = 1;
	int c;
	const char *server_bind_address = NULL;
	extern const opt_struct OPTIONS[];
	const char *document_root = NULL;
#ifdef PHP_WIN32
	char document_root_tmp[MAXPATHLEN];
	size_t k;
#endif
	const char *router = NULL;
	char document_root_buf[MAXPATHLEN];

	while ((c = FUNC10(argc, argv, OPTIONS, &php_optarg, &php_optind, 0, 2))!=-1) {
		switch (c) {
			case 'S':
				server_bind_address = php_optarg;
				break;
			case 't':
#ifndef PHP_WIN32
				document_root = php_optarg;
#else
				k = strlen(php_optarg);
				if (k + 1 > MAXPATHLEN) {
					fprintf(stderr, "Document root path is too long.\n");
					return 1;
				}
				memmove(document_root_tmp, php_optarg, k + 1);
				/* Clean out any trailing garbage that might have been passed
					from a batch script. */
				do {
					document_root_tmp[k] = '\0';
					k--;
				} while ('"' == document_root_tmp[k] || ' ' == document_root_tmp[k]);
				document_root = document_root_tmp;
#endif
				break;
			case 'q':
				if (php_cli_server_log_level > 1) {
					php_cli_server_log_level--;
				}
				break;
		}
	}

	if (document_root) {
		zend_stat_t sb;

		if (FUNC11(document_root, &sb)) {
			FUNC4(stderr, "Directory %s does not exist.\n", document_root);
			return 1;
		}
		if (!FUNC0(sb.st_mode)) {
			FUNC4(stderr, "%s is not a directory.\n", document_root);
			return 1;
		}
		if (FUNC3(document_root, document_root_buf)) {
			document_root = document_root_buf;
		}
	} else {
		char *ret = NULL;

#if HAVE_GETCWD
		ret = VCWD_GETCWD(document_root_buf, MAXPATHLEN);
#elif HAVE_GETWD
		ret = VCWD_GETWD(document_root_buf);
#endif
		document_root = ret ? document_root_buf: ".";
	}

	if (argc > php_optind) {
		router = argv[php_optind];
	}

	if (FAILURE == FUNC6(&server, server_bind_address, document_root, router)) {
		return 1;
	}
	sapi_module.phpinfo_as_text = 0;

	{
		FUNC9(
			PHP_CLI_SERVER_LOG_PROCESS,
			"PHP %s Development Server (http://%s) started",
			PHP_VERSION, server_bind_address);
	}

#if defined(SIGINT)
	signal(SIGINT, php_cli_server_sigint_handler);
#endif

#if defined(SIGPIPE)
	signal(SIGPIPE, SIG_IGN);
#endif

	FUNC14();

	FUNC7(&server);
	FUNC8(&server);
	return 0;
}