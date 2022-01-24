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
struct fpm_worker_pool_s {struct fpm_worker_pool_s* next; } ;
struct TYPE_2__ {int argc; char** argv; int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** environ ; 
 char** fpm_env_argv ; 
 int fpm_env_argv_len ; 
 scalar_t__ FUNC1 (struct fpm_worker_pool_s*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ fpm_globals ; 
 struct fpm_worker_pool_s* fpm_worker_all_pools ; 
 char** FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

int FUNC7() /* {{{ */
{
	struct fpm_worker_pool_s *wp;
	char *title;

	for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
		if (0 > FUNC1(wp)) {
			return -1;
		}
	}
#ifndef HAVE_SETPROCTITLE
#ifdef __linux__
	int i;
	char *first = NULL;
	char *last = NULL;
	/*
	 * This piece of code has been inspirated from nginx and pureftpd code, which
	 * are under BSD licence.
	 *
	 * To change the process title in Linux we have to set argv[1] to NULL
	 * and to copy the title to the same place where the argv[0] points to.
	 * However, argv[0] may be too small to hold a new title.  Fortunately, Linux
	 * store argv[] and environ[] one after another.  So we should ensure that is
	 * the continuous memory and then we allocate the new memory for environ[]
	 * and copy it.  After this we could use the memory starting from argv[0] for
	 * our process title.
	 */

	for (i = 0; i < fpm_globals.argc; i++) {
		if (first == NULL) {
			first = fpm_globals.argv[i];
		}
		if (last == NULL || fpm_globals.argv[i] == last + 1) {
			last = fpm_globals.argv[i] + FUNC6(fpm_globals.argv[i]);
		}
	}
	if (environ) {
		for (i = 0; environ[i]; i++) {
			if (first == NULL) {
				first = environ[i];
			}
			if (last == NULL || environ[i] == last + 1) {
				last = environ[i] + FUNC6(environ[i]);
			}
		}
	}
	if (first == NULL || last == NULL) {
		return 0;
	}

	fpm_env_argv_len = last - first;
	fpm_env_argv = fpm_globals.argv;
	if (environ != NULL) {
		char **new_environ;
		unsigned int env_nb = 0U;

		while (environ[env_nb]) {
			env_nb++;
		}

		if ((new_environ = FUNC3((1U + env_nb) * sizeof (char *))) == NULL) {
			return -1;
		}
		new_environ[env_nb] = NULL;
		while (env_nb > 0U) {
			env_nb--;
			new_environ[env_nb] = FUNC5(environ[env_nb]);
		}
		environ = new_environ;
	}
#endif
#endif

	FUNC4(&title, 0, "master process (%s)", fpm_globals.config);
	FUNC2(title);
	FUNC0(title);
	return 0;
}