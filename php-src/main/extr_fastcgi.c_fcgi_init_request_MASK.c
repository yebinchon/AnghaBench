#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void (* on_accept ) () ;void (* on_read ) () ;void (* on_close ) () ;} ;
struct TYPE_6__ {int listen_socket; int fd; int id; int tcp; int /*<<< orphan*/  env; TYPE_1__ hook; int /*<<< orphan*/  out_buf; int /*<<< orphan*/  out_pos; } ;
typedef  TYPE_2__ fcgi_request ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void FUNC4 () ; 

fcgi_request *FUNC5(int listen_socket, void(*on_accept)(), void(*on_read)(), void(*on_close)())
{
	fcgi_request *req = FUNC2(1, sizeof(fcgi_request));
	req->listen_socket = listen_socket;
	req->fd = -1;
	req->id = -1;

	/*
	req->in_len = 0;
	req->in_pad = 0;

	req->out_hdr = NULL;

#ifdef TCP_NODELAY
	req->nodelay = 0;
#endif

	req->env = NULL;
	req->has_env = 0;

	*/
	req->out_pos = req->out_buf;
	req->hook.on_accept = on_accept ? on_accept : fcgi_hook_dummy;
	req->hook.on_read = on_read ? on_read : fcgi_hook_dummy;
	req->hook.on_close = on_close ? on_close : fcgi_hook_dummy;

#ifdef _WIN32
	req->tcp = !GetNamedPipeInfo((HANDLE)_get_osfhandle(req->listen_socket), NULL, NULL, NULL, NULL);
#endif

	FUNC3(&req->env);

	return req;
}