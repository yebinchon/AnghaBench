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
struct rpc_gss_sec {int dummy; } ;
typedef  scalar_t__ gss_name_t ;
struct TYPE_4__ {char* value; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
struct TYPE_5__ {int /*<<< orphan*/  cf_stat; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  CLIENT ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 scalar_t__ GSS_C_NO_NAME ; 
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  RPC_AUTHERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,struct rpc_gss_sec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 TYPE_2__ rpc_createerr ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

AUTH *
FUNC7(CLIENT *clnt, char *service, struct rpc_gss_sec *sec)
{
	AUTH			*auth;
	OM_uint32		 maj_stat = 0, min_stat = 0;
	gss_buffer_desc		 sname;
	gss_name_t		 name = GSS_C_NO_NAME;

	FUNC4("in authgss_create_default()");


	sname.value = service;
	sname.length = FUNC6(service);

	maj_stat = FUNC2(&min_stat, &sname,
		(gss_OID)GSS_C_NT_HOSTBASED_SERVICE,
		&name);

	if (maj_stat != GSS_S_COMPLETE) {
		FUNC5("gss_import_name", maj_stat, min_stat);
		rpc_createerr.cf_stat = RPC_AUTHERROR;
		return (NULL);
	}

	auth = FUNC0(clnt, name, sec);

	if (name != GSS_C_NO_NAME) {
#ifdef DEBUG
	fprintf(stderr, "authgss_create_default: freeing name %p\n", name);
#endif
 		FUNC3(&min_stat, &name);
	}

	return (auth);
}