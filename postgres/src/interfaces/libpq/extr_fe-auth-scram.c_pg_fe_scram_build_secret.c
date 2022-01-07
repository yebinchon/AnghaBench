
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_saslprep_rc ;


 scalar_t__ SASLPREP_OOM ;
 scalar_t__ SASLPREP_SUCCESS ;
 int SCRAM_DEFAULT_ITERATIONS ;
 int SCRAM_DEFAULT_SALT_LEN ;
 int free (char*) ;
 scalar_t__ pg_saslprep (char const*,char**) ;
 int pg_strong_random (char*,int) ;
 char* scram_build_secret (char*,int,int ,char const*) ;

char *
pg_fe_scram_build_secret(const char *password)
{
 char *prep_password;
 pg_saslprep_rc rc;
 char saltbuf[SCRAM_DEFAULT_SALT_LEN];
 char *result;






 rc = pg_saslprep(password, &prep_password);
 if (rc == SASLPREP_OOM)
  return ((void*)0);
 if (rc == SASLPREP_SUCCESS)
  password = (const char *) prep_password;


 if (!pg_strong_random(saltbuf, SCRAM_DEFAULT_SALT_LEN))
 {
  if (prep_password)
   free(prep_password);
  return ((void*)0);
 }

 result = scram_build_secret(saltbuf, SCRAM_DEFAULT_SALT_LEN,
          SCRAM_DEFAULT_ITERATIONS, password);

 if (prep_password)
  free(prep_password);

 return result;
}
