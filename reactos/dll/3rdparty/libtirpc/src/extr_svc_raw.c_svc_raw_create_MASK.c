#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  oa_base; } ;
struct TYPE_7__ {TYPE_1__ xp_verf; int /*<<< orphan*/ * xp_p3; scalar_t__ xp_port; int /*<<< orphan*/  xp_fd; } ;
struct svc_raw_private {TYPE_2__ server; int /*<<< orphan*/ * raw_buf; int /*<<< orphan*/  xdr_stream; int /*<<< orphan*/  verf_body; } ;
typedef  TYPE_2__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  FD_SETSIZE ; 
 int UDPMSGSIZE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/ * __rpc_rawcombuf ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct svc_raw_private* svc_raw_private ; 
 int /*<<< orphan*/  svcraw_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

SVCXPRT *
FUNC6()
{
	struct svc_raw_private *srp;
/* VARIABLES PROTECTED BY svcraw_lock: svc_raw_private, srp */

	FUNC1(&svcraw_lock);
	srp = svc_raw_private;
	if (srp == NULL) {
		srp = (struct svc_raw_private *)FUNC0(1, sizeof (*srp));
		if (srp == NULL) {
			FUNC2(&svcraw_lock);
			return (NULL);
		}
		if (__rpc_rawcombuf == NULL)
			__rpc_rawcombuf = FUNC0(UDPMSGSIZE, sizeof (char));
		srp->raw_buf = __rpc_rawcombuf; /* Share it with the client */
		svc_raw_private = srp;
	}
	srp->server.xp_fd = FD_SETSIZE;
	srp->server.xp_port = 0;
	srp->server.xp_p3 = NULL;
	FUNC3(&srp->server);
	srp->server.xp_verf.oa_base = srp->verf_body;
	FUNC4(&srp->xdr_stream, srp->raw_buf, UDPMSGSIZE, XDR_DECODE);
	FUNC5(&srp->server);
	FUNC2(&svcraw_lock);
	return (&srp->server);
}