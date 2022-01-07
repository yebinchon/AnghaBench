
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char* uint32_t ;
struct rpc_sspi_sec {int svc; int cred; int expiry; } ;
typedef scalar_t__ sspi_name_t ;
struct TYPE_7__ {char* value; int length; } ;
typedef TYPE_2__ sspi_buffer_desc ;
typedef int gss_OID ;
struct TYPE_6__ {scalar_t__ re_errno; } ;
struct TYPE_8__ {TYPE_1__ cf_error; int cf_stat; } ;
typedef int CLIENT ;
typedef int AUTH ;


 char* AcquireCredentialsHandleA (int *,unsigned char*,int ,int *,int *,int *,int *,int *,int *) ;
 scalar_t__ ENOMEM ;
 int FreeCredentialsHandle (int *) ;
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ;
 int RPC_SYSTEMERROR ;
 int SECPKG_CRED_BOTH ;
 char* SEC_E_OK ;
 scalar_t__ SSPI_C_NO_NAME ;
 int * authsspi_create (int *,scalar_t__,struct rpc_sspi_sec*) ;
 struct rpc_sspi_sec* calloc (int,int) ;
 int free (struct rpc_sspi_sec*) ;
 char* gss_import_name (int *,TYPE_2__*,int ,scalar_t__*) ;
 int gss_release_name (int *,scalar_t__*) ;
 int log_debug (char*,char*) ;
 int min_stat ;
 TYPE_4__ rpc_createerr ;
 char* sspi_import_name (TYPE_2__*,scalar_t__*) ;
 scalar_t__ strlen (char*) ;

AUTH *
authsspi_create_default(CLIENT *clnt, char *service, int svc)
{
 AUTH *auth = ((void*)0);
 uint32_t maj_stat = 0;
 sspi_buffer_desc sname;
    sspi_name_t name = SSPI_C_NO_NAME;
    unsigned char sec_pkg_name[] = "Kerberos";
    struct rpc_sspi_sec *sec;

 log_debug("in authgss_create_default() for %s", service);

 sname.value = service;
 sname.length = (int)strlen(service);





    maj_stat = sspi_import_name(&sname, &name);

 if (maj_stat != SEC_E_OK) {
  log_debug("authgss_create_default: sspi_import_name failed with %x", maj_stat);
  return (((void*)0));
 }
    sec = calloc(1, sizeof(struct rpc_sspi_sec));
    if (sec == ((void*)0))
        goto out_err;
    sec->svc = svc;

    maj_stat = AcquireCredentialsHandleA(((void*)0), sec_pkg_name, SECPKG_CRED_BOTH,
        ((void*)0), ((void*)0), ((void*)0), ((void*)0), &sec->cred, &sec->expiry);
    if (maj_stat != SEC_E_OK) {
        log_debug("authgss_create_default: AcquireCredentialsHandleA failed with %x", maj_stat);
        free(sec);
        goto out;
    }

 auth = authsspi_create(clnt, name, sec);
    if (auth == ((void*)0))
        goto out_free_sec;

out:
 if (name != SSPI_C_NO_NAME) {



        free(name);

 }

 return (auth);
out_free_sec:
    if (rpc_createerr.cf_error.re_errno == ENOMEM) {
        FreeCredentialsHandle(&sec->cred);
        free(sec);
    }
out_err:
    rpc_createerr.cf_stat = RPC_SYSTEMERROR;
 rpc_createerr.cf_error.re_errno = ENOMEM;
    goto out;
}
