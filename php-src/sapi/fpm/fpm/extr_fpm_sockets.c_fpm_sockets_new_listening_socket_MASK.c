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
struct sockaddr_un {char* sun_path; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct fpm_worker_pool_s {scalar_t__ listen_address_domain; int socket_mode; TYPE_1__* config; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  flags ;
struct TYPE_2__ {char* listen_address; int /*<<< orphan*/  listen_backlog; } ;

/* Variables and functions */
 scalar_t__ FPM_AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  ZLOG_SYSERROR ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sockaddr_un*,int) ; 
 scalar_t__ FUNC3 (struct fpm_worker_pool_s*,char*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC10(struct fpm_worker_pool_s *wp, struct sockaddr *sa, int socklen) /* {{{ */
{
	int flags = 1;
	int sock;
	mode_t saved_umask = 0;

	sock = FUNC6(sa->sa_family, SOCK_STREAM, 0);

	if (0 > sock) {
		FUNC9(ZLOG_SYSERROR, "failed to create new listening socket: socket()");
		return -1;
	}

	if (0 > FUNC5(sock, SOL_SOCKET, SO_REUSEADDR, &flags, sizeof(flags))) {
		FUNC9(ZLOG_WARNING, "failed to change socket attribute");
	}

	if (wp->listen_address_domain == FPM_AF_UNIX) {
		if (FUNC2((struct sockaddr_un *)sa, socklen) == 0) {
			FUNC9(ZLOG_ERROR, "Another FPM instance seems to already listen on %s", ((struct sockaddr_un *) sa)->sun_path);
			FUNC1(sock);
			return -1;
		}
		FUNC8( ((struct sockaddr_un *) sa)->sun_path);
		saved_umask = FUNC7(0777 ^ wp->socket_mode);
	}

	if (0 > FUNC0(sock, sa, socklen)) {
		FUNC9(ZLOG_SYSERROR, "unable to bind listening socket for address '%s'", wp->config->listen_address);
		if (wp->listen_address_domain == FPM_AF_UNIX) {
			FUNC7(saved_umask);
		}
		FUNC1(sock);
		return -1;
	}

	if (wp->listen_address_domain == FPM_AF_UNIX) {
		char *path = ((struct sockaddr_un *) sa)->sun_path;

		FUNC7(saved_umask);

		if (0 > FUNC3(wp, path)) {
			FUNC1(sock);
			return -1;
		}
	}

	if (0 > FUNC4(sock, wp->config->listen_backlog)) {
		FUNC9(ZLOG_SYSERROR, "failed to listen to address '%s'", wp->config->listen_address);
		FUNC1(sock);
		return -1;
	}

	return sock;
}