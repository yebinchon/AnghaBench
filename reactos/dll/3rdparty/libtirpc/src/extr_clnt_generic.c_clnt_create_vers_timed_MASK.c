#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {unsigned int low; unsigned int high; } ;
struct rpc_err {TYPE_1__ re_vers; } ;
typedef  scalar_t__ rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_4__ {int cf_stat; struct rpc_err cf_error; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CLSET_VERS ; 
 int /*<<< orphan*/  NULLPROC ; 
 int RPC_PROGVERSMISMATCH ; 
 int RPC_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,struct timeval) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/  const,scalar_t__,char const*,struct timeval const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rpc_err*) ; 
 TYPE_2__ rpc_createerr ; 
 scalar_t__ xdr_void ; 

CLIENT *
FUNC5(const char *hostname, const rpcprog_t prog,
    rpcvers_t *vers_out, const rpcvers_t vers_low_in, const rpcvers_t vers_high_in,
    const char *nettype, const struct timeval *tp)
{
	CLIENT *clnt;
	struct timeval to;
	enum clnt_stat rpc_stat;
	struct rpc_err rpcerr;
	rpcvers_t vers_high = vers_high_in;
	rpcvers_t vers_low = vers_low_in;

	clnt = FUNC2(hostname, prog, vers_high, nettype, tp);
	if (clnt == NULL) {
		return (NULL);
	}
	to.tv_sec = 10;
	to.tv_usec = 0;
	rpc_stat = FUNC1(clnt, NULLPROC, (xdrproc_t)xdr_void,
			(char *)NULL, (xdrproc_t)xdr_void, (char *)NULL, to);
	if (rpc_stat == RPC_SUCCESS) {
		*vers_out = vers_high;
		return (clnt);
	}
	while (rpc_stat == RPC_PROGVERSMISMATCH && vers_high > vers_low) {
		unsigned int minvers, maxvers;

		FUNC4(clnt, &rpcerr);
		minvers = rpcerr.re_vers.low;
		maxvers = rpcerr.re_vers.high;
		if (maxvers < vers_high)
			vers_high = maxvers;
		else
			vers_high--;
		if (minvers > vers_low)
			vers_low = minvers;
		if (vers_low > vers_high) {
			goto error;
		}
		FUNC0(clnt, CLSET_VERS, (char *)&vers_high);
		rpc_stat = FUNC1(clnt, NULLPROC, (xdrproc_t)xdr_void,
				(char *)NULL, (xdrproc_t)xdr_void,
				(char *)NULL, to);
		if (rpc_stat == RPC_SUCCESS) {
			*vers_out = vers_high;
			return (clnt);
		}
	}
	FUNC4(clnt, &rpcerr);

error:
	rpc_createerr.cf_stat = rpc_stat;
	rpc_createerr.cf_error = rpcerr;
	FUNC3(clnt);
	return (NULL);
}