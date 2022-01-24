#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int dummy; } ;
struct fpm_scoreboard_proc_s {size_t content_length; int /*<<< orphan*/  script_filename; int /*<<< orphan*/  auth_user; int /*<<< orphan*/  query_string; int /*<<< orphan*/  request_method; int /*<<< orphan*/  request_uri; struct timeval tv; int /*<<< orphan*/  request_stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPM_REQUEST_INFO ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 char* FUNC1 () ; 
 size_t FUNC2 () ; 
 char* FUNC3 () ; 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 char* FUNC6 () ; 
 struct fpm_scoreboard_proc_s* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fpm_scoreboard_proc_s*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

void FUNC11() /* {{{ */
{
	struct fpm_scoreboard_proc_s *proc;
	char *request_uri = FUNC5();
	char *request_method = FUNC4();
	char *script_filename = FUNC6();
	char *query_string = FUNC3();
	char *auth_user = FUNC1();
	size_t content_length = FUNC2();
	struct timeval now;

	FUNC0(&now);

	proc = FUNC7(NULL, -1, 0);
	if (proc == NULL) {
		FUNC10(ZLOG_WARNING, "failed to acquire proc scoreboard");
		return;
	}

	proc->request_stage = FPM_REQUEST_INFO;
	proc->tv = now;

	if (request_uri) {
		FUNC9(proc->request_uri, request_uri, sizeof(proc->request_uri));
	}

	if (request_method) {
		FUNC9(proc->request_method, request_method, sizeof(proc->request_method));
	}

	if (query_string) {
		FUNC9(proc->query_string, query_string, sizeof(proc->query_string));
	}

	if (auth_user) {
		FUNC9(proc->auth_user, auth_user, sizeof(proc->auth_user));
	}

	proc->content_length = content_length;

	/* if cgi.fix_pathinfo is set to "1" and script cannot be found (404)
		the sapi_globals.request_info.path_translated is set to NULL */
	if (script_filename) {
		FUNC9(proc->script_filename, script_filename, sizeof(proc->script_filename));
	}

	FUNC8(proc);
}