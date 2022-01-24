#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct listening_socket_s {scalar_t__ refcount; int const type; int /*<<< orphan*/  key; int /*<<< orphan*/  sock; } ;
struct fpm_worker_pool_s {int listen_address_domain; int listening_socket; int /*<<< orphan*/  scoreboard; struct fpm_worker_pool_s* next; } ;
struct TYPE_4__ {unsigned int used; struct listening_socket_s* data; } ;

/* Variables and functions */
#define  FPM_AF_INET 129 
#define  FPM_AF_UNIX 128 
 int /*<<< orphan*/  FPM_CLEANUP_ALL ; 
 unsigned int FPM_ENV_SOCKET_SET_MAX ; 
 int /*<<< orphan*/  FPM_SCOREBOARD_ACTION_SET ; 
 int /*<<< orphan*/  FPM_STORE_SOCKET ; 
 int /*<<< orphan*/  ZLOG_NOTICE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct fpm_worker_pool_s*) ; 
 int FUNC7 (struct fpm_worker_pool_s*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  fpm_sockets_cleanup ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fpm_worker_pool_s*) ; 
 struct fpm_worker_pool_s* fpm_worker_all_pools ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 TYPE_1__ sockets_list ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,unsigned int) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int,char*) ; 

int FUNC20() /* {{{ */
{
	unsigned i, lq_len;
	struct fpm_worker_pool_s *wp;
	char sockname[32];
	char sockpath[256];
	char *inherited;
	struct listening_socket_s *ls;

	if (0 == FUNC2(&sockets_list, sizeof(struct listening_socket_s), 10)) {
		return -1;
	}

	/* import inherited sockets */
	for (i = 0; i < FPM_ENV_SOCKET_SET_MAX; i++) {
		if (!i) {
			FUNC17(sockname, "FPM_SOCKETS");
		} else {
			FUNC15(sockname, "FPM_SOCKETS_%d", i);
		}
		inherited = FUNC13(sockname);
		if (!inherited) {
			break;
		}

		while (inherited && *inherited) {
			char *comma = FUNC16(inherited, ',');
			int type, fd_no;
			char *eq;

			if (comma) {
				*comma = '\0';
			}

			eq = FUNC16(inherited, '=');
			if (eq) {
				int sockpath_len = eq - inherited;
				if (sockpath_len > 255) {
					/* this should never happen as UDS limit is lower */
					sockpath_len = 255;
				}
				FUNC14(sockpath, inherited, sockpath_len);
				sockpath[sockpath_len] = '\0';
				fd_no = FUNC0(eq + 1);
				type = FUNC9(sockpath);
				FUNC19(ZLOG_NOTICE, "using inherited socket fd=%d, \"%s\"", fd_no, sockpath);
				FUNC10(fd_no, 0, sockpath, type, FPM_STORE_SOCKET);
			}

			if (comma) {
				inherited = comma + 1;
			} else {
				inherited = 0;
			}
		}
	}

	/* create all required sockets */
	for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
		switch (wp->listen_address_domain) {
			case FPM_AF_INET :
				wp->listening_socket = FUNC6(wp);
				break;

			case FPM_AF_UNIX :
				if (0 > FUNC11(wp)) {
					return -1;
				}
				wp->listening_socket = FUNC7(wp);
				break;
		}

		if (wp->listening_socket == -1) {
			return -1;
		}

	if (wp->listen_address_domain == FPM_AF_INET && FUNC8(wp->listening_socket, NULL, &lq_len) >= 0) {
			FUNC5(-1, -1, -1, (int)lq_len, -1, -1, 0, FPM_SCOREBOARD_ACTION_SET, wp->scoreboard);
		}
	}

	/* close unused sockets that was inherited */
	ls = sockets_list.data;

	for (i = 0; i < sockets_list.used; ) {
		if (ls->refcount == 0) {
			FUNC1(ls->sock);
			if (ls->type == FPM_AF_UNIX) {
				FUNC18(ls->key);
			}
			FUNC12(ls->key);
			FUNC3(&sockets_list, i);
		} else {
			++i;
			++ls;
		}
	}

	if (0 > FUNC4(FPM_CLEANUP_ALL, fpm_sockets_cleanup, 0)) {
		return -1;
	}
	return 0;
}