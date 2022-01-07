
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ pg_saslprep_rc ;


 int LOG ;
 scalar_t__ SASLPREP_SUCCESS ;
 int SCRAM_KEY_LEN ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ memcmp (int *,int *,int) ;
 char* palloc (int) ;
 int parse_scram_secret (char const*,int*,char**,int *,int *) ;
 int pfree (char*) ;
 int pg_b64_dec_len (int ) ;
 int pg_b64_decode (char*,int ,char*,int) ;
 scalar_t__ pg_saslprep (char const*,char**) ;
 int scram_SaltedPassword (char const*,char*,int,int,int *) ;
 int scram_ServerKey (int *,int *) ;
 int strlen (char*) ;

bool
scram_verify_plain_password(const char *username, const char *password,
       const char *secret)
{
 char *encoded_salt;
 char *salt;
 int saltlen;
 int iterations;
 uint8 salted_password[SCRAM_KEY_LEN];
 uint8 stored_key[SCRAM_KEY_LEN];
 uint8 server_key[SCRAM_KEY_LEN];
 uint8 computed_key[SCRAM_KEY_LEN];
 char *prep_password;
 pg_saslprep_rc rc;

 if (!parse_scram_secret(secret, &iterations, &encoded_salt,
         stored_key, server_key))
 {



  ereport(LOG,
    (errmsg("invalid SCRAM secret for user \"%s\"", username)));
  return 0;
 }

 saltlen = pg_b64_dec_len(strlen(encoded_salt));
 salt = palloc(saltlen);
 saltlen = pg_b64_decode(encoded_salt, strlen(encoded_salt), salt,
       saltlen);
 if (saltlen < 0)
 {
  ereport(LOG,
    (errmsg("invalid SCRAM secret for user \"%s\"", username)));
  return 0;
 }


 rc = pg_saslprep(password, &prep_password);
 if (rc == SASLPREP_SUCCESS)
  password = prep_password;


 scram_SaltedPassword(password, salt, saltlen, iterations, salted_password);
 scram_ServerKey(salted_password, computed_key);

 if (prep_password)
  pfree(prep_password);





 return memcmp(computed_key, server_key, SCRAM_KEY_LEN) == 0;
}
