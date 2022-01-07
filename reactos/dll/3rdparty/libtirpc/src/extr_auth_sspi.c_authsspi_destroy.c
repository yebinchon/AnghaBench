
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_sspi_data {scalar_t__ name; struct rpc_sspi_data* sec; int cred; } ;
typedef struct rpc_sspi_data AUTH ;


 struct rpc_sspi_data* AUTH_PRIVATE (struct rpc_sspi_data*) ;
 int FreeCredentialsHandle (int *) ;
 scalar_t__ SSPI_C_NO_NAME ;
 int authsspi_destroy_context (struct rpc_sspi_data*) ;
 int free (struct rpc_sspi_data*) ;
 int gss_release_name (int *,scalar_t__*) ;
 int log_debug (char*) ;
 int min_stat ;

__attribute__((used)) static void
authsspi_destroy(AUTH *auth)
{
 struct rpc_sspi_data *gd;

 log_debug("in authgss_destroy()");

 gd = AUTH_PRIVATE(auth);
    if (gd == ((void*)0)) return;

 authsspi_destroy_context(auth);





    free(gd->name);

    FreeCredentialsHandle(&gd->sec->cred);
    free(gd->sec);
 free(gd);
 free(auth);
}
