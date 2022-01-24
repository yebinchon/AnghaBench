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
struct TYPE_4__ {int /*<<< orphan*/  (* on_close ) () ;} ;
struct TYPE_5__ {int fd; TYPE_1__ hook; scalar_t__ nodelay; int /*<<< orphan*/  tcp; int /*<<< orphan*/  keep; scalar_t__ has_env; int /*<<< orphan*/  env; } ;
typedef  TYPE_2__ fcgi_request ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ is_impersonate ; 
 scalar_t__ FUNC7 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(fcgi_request *req, int force, int destroy)
{
	if (destroy && req->has_env) {
		FUNC6(&req->env);
		req->has_env = 0;
	}

#ifdef _WIN32
	if (is_impersonate && !req->tcp) {
		RevertToSelf();
	}
#endif

	if ((force || !req->keep) && req->fd >= 0) {
#ifdef _WIN32
		if (!req->tcp) {
			HANDLE pipe = (HANDLE)_get_osfhandle(req->fd);

			if (!force) {
				FlushFileBuffers(pipe);
			}
			DisconnectNamedPipe(pipe);
		} else {
			if (!force) {
				char buf[8];

				shutdown(req->fd, 1);
				/* read any remaining data, it may be omitted */
				while (recv(req->fd, buf, sizeof(buf), 0) > 0) {}
			}
			closesocket(req->fd);
		}
#else
		if (!force) {
			char buf[8];

			FUNC8(req->fd, 1);
			/* read any remaining data, it may be omitted */
			while (FUNC7(req->fd, buf, sizeof(buf), 0) > 0) {}
		}
		FUNC4(req->fd);
#endif
#ifdef TCP_NODELAY
		req->nodelay = 0;
#endif
		req->fd = -1;

		req->hook.on_close();
	}
}