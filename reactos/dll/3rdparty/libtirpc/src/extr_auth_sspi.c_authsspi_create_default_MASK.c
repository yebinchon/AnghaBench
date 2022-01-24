#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char* uint32_t ;
struct rpc_sspi_sec {int svc; int /*<<< orphan*/  cred; int /*<<< orphan*/  expiry; } ;
typedef  scalar_t__ sspi_name_t ;
struct TYPE_7__ {char* value; int length; } ;
typedef  TYPE_2__ sspi_buffer_desc ;
typedef  int /*<<< orphan*/  gss_OID ;
struct TYPE_6__ {scalar_t__ re_errno; } ;
struct TYPE_8__ {TYPE_1__ cf_error; int /*<<< orphan*/  cf_stat; } ;
typedef  int /*<<< orphan*/  CLIENT ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ; 
 int /*<<< orphan*/  RPC_SYSTEMERROR ; 
 int /*<<< orphan*/  SECPKG_CRED_BOTH ; 
 char* SEC_E_OK ; 
 scalar_t__ SSPI_C_NO_NAME ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,struct rpc_sspi_sec*) ; 
 struct rpc_sspi_sec* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_sspi_sec*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  min_stat ; 
 TYPE_4__ rpc_createerr ; 
 char* FUNC8 (TYPE_2__*,scalar_t__*) ; 
 scalar_t__ FUNC9 (char*) ; 

AUTH *
FUNC10(CLIENT *clnt, char *service, int svc)
{
	AUTH *auth = NULL;
	uint32_t maj_stat = 0;
	sspi_buffer_desc sname;
    sspi_name_t name = SSPI_C_NO_NAME;
    unsigned char sec_pkg_name[] = "Kerberos";
    struct rpc_sspi_sec *sec;

	FUNC7("in authgss_create_default() for %s", service);

	sname.value = service;
	sname.length = (int)FUNC9(service);
#if 0
	maj_stat = gss_import_name(&min_stat, &sname,
		(gss_OID)GSS_C_NT_HOSTBASED_SERVICE,
		&name);
#else
    maj_stat = FUNC8(&sname, &name);
#endif
	if (maj_stat != SEC_E_OK) {
		FUNC7("authgss_create_default: sspi_import_name failed with %x", maj_stat);
		return (NULL);
	}
    sec = FUNC3(1, sizeof(struct rpc_sspi_sec));
    if (sec == NULL)
        goto out_err;
    sec->svc = svc;
    // Let's acquire creds here for now
    maj_stat = FUNC0(NULL, sec_pkg_name, SECPKG_CRED_BOTH,
        NULL, NULL, NULL, NULL, &sec->cred, &sec->expiry);
    if (maj_stat != SEC_E_OK) {
        FUNC7("authgss_create_default: AcquireCredentialsHandleA failed with %x", maj_stat);
        FUNC4(sec);
        goto out;
    }

	auth = FUNC2(clnt, name, sec);
    if (auth == NULL)
        goto out_free_sec;

out:
	if (name != SSPI_C_NO_NAME) {
#if 0
 		gss_release_name(&min_stat, &name);
#else
        FUNC4(name);
#endif
	}

	return (auth);
out_free_sec:
    if (rpc_createerr.cf_error.re_errno == ENOMEM) {
        FUNC1(&sec->cred);
        FUNC4(sec);
    }
out_err:
    rpc_createerr.cf_stat = RPC_SYSTEMERROR;
	rpc_createerr.cf_error.re_errno = ENOMEM;
    goto out;
}