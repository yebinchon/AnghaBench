
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_saslprep_rc ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 scalar_t__ SASLPREP_SUCCESS ;
 int SCRAM_DEFAULT_ITERATIONS ;
 int SCRAM_DEFAULT_SALT_LEN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (char*) ;
 scalar_t__ pg_saslprep (char const*,char**) ;
 int pg_strong_random (char*,int) ;
 char* scram_build_secret (char*,int,int ,char const*) ;

char *
pg_be_scram_build_secret(const char *password)
{
 char *prep_password;
 pg_saslprep_rc rc;
 char saltbuf[SCRAM_DEFAULT_SALT_LEN];
 char *result;






 rc = pg_saslprep(password, &prep_password);
 if (rc == SASLPREP_SUCCESS)
  password = (const char *) prep_password;


 if (!pg_strong_random(saltbuf, SCRAM_DEFAULT_SALT_LEN))
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("could not generate random salt")));

 result = scram_build_secret(saltbuf, SCRAM_DEFAULT_SALT_LEN,
          SCRAM_DEFAULT_ITERATIONS, password);

 if (prep_password)
  pfree(prep_password);

 return result;
}
