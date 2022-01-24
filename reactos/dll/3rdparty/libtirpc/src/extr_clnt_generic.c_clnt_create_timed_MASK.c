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
struct timeval {int dummy; } ;
struct rpc_err {int dummy; } ;
struct netconfig {char* nc_netid; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
typedef  int /*<<< orphan*/  nettype_array ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_2__ {scalar_t__ cf_stat; struct rpc_err cf_error; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int NETIDLEN ; 
 scalar_t__ RPC_N2AXLATEFAILURE ; 
 scalar_t__ RPC_SUCCESS ; 
 scalar_t__ RPC_UNKNOWNHOST ; 
 void* RPC_UNKNOWNPROTO ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct netconfig* FUNC1 (void*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,struct netconfig*,struct timeval const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 TYPE_1__ rpc_createerr ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 size_t FUNC6 (char const*) ; 

CLIENT *
FUNC7(const char *hostname, const rpcprog_t prog, const rpcvers_t vers,
    const char *netclass, const struct timeval *tp)
{
	struct netconfig *nconf;
	CLIENT *clnt = NULL;
	void *handle;
	enum clnt_stat	save_cf_stat = RPC_SUCCESS;
	struct rpc_err	save_cf_error;
	char nettype_array[NETIDLEN];
	char *nettype = &nettype_array[0];

	if (netclass == NULL)
		nettype = NULL;
	else {
		size_t len = FUNC6(netclass);
		if (len >= sizeof (nettype_array)) {
			rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
			return (NULL);
		}
		FUNC5(nettype, netclass);
	}

	if ((handle = FUNC2((char *)nettype)) == NULL) {
		rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
		return (NULL);
	}
	rpc_createerr.cf_stat = RPC_SUCCESS;
	while (clnt == NULL) {
		if ((nconf = FUNC1(handle)) == NULL) {
			if (rpc_createerr.cf_stat == RPC_SUCCESS)
				rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
			break;
		}
#ifdef CLNT_DEBUG
		printf("trying netid %s\n", nconf->nc_netid);
#endif
		clnt = FUNC3(hostname, prog, vers, nconf, tp);
		if (clnt)
			break;
		else {
			/*
			 *	Since we didn't get a name-to-address
			 *	translation failure here, we remember
			 *	this particular error.  The object of
			 *	this is to enable us to return to the
			 *	caller a more-specific error than the
			 *	unhelpful ``Name to address translation
			 *	failed'' which might well occur if we
			 *	merely returned the last error (because
			 *	the local loopbacks are typically the
			 *	last ones in /etc/netconfig and the most
			 *	likely to be unable to translate a host
			 *	name).  We also check for a more
			 *	meaningful error than ``unknown host
			 *	name'' for the same reasons.
			 */
			if (rpc_createerr.cf_stat != RPC_N2AXLATEFAILURE &&
			    rpc_createerr.cf_stat != RPC_UNKNOWNHOST) {
				save_cf_stat = rpc_createerr.cf_stat;
				save_cf_error = rpc_createerr.cf_error;
			}
		}
	}

	/*
	 *	Attempt to return an error more specific than ``Name to address
	 *	translation failed'' or ``unknown host name''
	 */
	if ((rpc_createerr.cf_stat == RPC_N2AXLATEFAILURE ||
	     rpc_createerr.cf_stat == RPC_UNKNOWNHOST) &&
	    (save_cf_stat != RPC_SUCCESS)) {
		rpc_createerr.cf_stat = save_cf_stat;
		rpc_createerr.cf_error = save_cf_error;
	}
	FUNC0(handle);
	return (clnt);
}