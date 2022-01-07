
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gss_cred_id_t ;
typedef scalar_t__ OM_uint32 ;


 int GSS_C_INITIATE ;
 int * GSS_C_NO_CREDENTIAL ;
 int GSS_C_NO_NAME ;
 int GSS_C_NO_OID_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,int ,int ,int **,int *,int *) ;

bool
pg_GSS_have_cred_cache(gss_cred_id_t *cred_out)
{
 OM_uint32 major,
    minor;
 gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;

 major = gss_acquire_cred(&minor, GSS_C_NO_NAME, 0, GSS_C_NO_OID_SET,
        GSS_C_INITIATE, &cred, ((void*)0), ((void*)0));
 if (major != GSS_S_COMPLETE)
 {
  *cred_out = ((void*)0);
  return 0;
 }
 *cred_out = cred;
 return 1;
}
