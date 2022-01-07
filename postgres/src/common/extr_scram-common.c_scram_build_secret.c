
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int Assert (int) ;
 int ERROR ;
 int SCRAM_DEFAULT_ITERATIONS ;
 int SCRAM_KEY_LEN ;
 int elog (int ,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 char* palloc (int) ;
 int pg_b64_enc_len (int) ;
 int pg_b64_encode (char const*,int,char*,int) ;
 int scram_ClientKey (int *,int *) ;
 int scram_H (int *,int,int *) ;
 int scram_SaltedPassword (char const*,char const*,int,int,int *) ;
 int scram_ServerKey (int *,int *) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

char *
scram_build_secret(const char *salt, int saltlen, int iterations,
      const char *password)
{
 uint8 salted_password[SCRAM_KEY_LEN];
 uint8 stored_key[SCRAM_KEY_LEN];
 uint8 server_key[SCRAM_KEY_LEN];
 char *result;
 char *p;
 int maxlen;
 int encoded_salt_len;
 int encoded_stored_len;
 int encoded_server_len;
 int encoded_result;

 if (iterations <= 0)
  iterations = SCRAM_DEFAULT_ITERATIONS;


 scram_SaltedPassword(password, salt, saltlen, iterations,
       salted_password);
 scram_ClientKey(salted_password, stored_key);
 scram_H(stored_key, SCRAM_KEY_LEN, stored_key);

 scram_ServerKey(salted_password, server_key);






 encoded_salt_len = pg_b64_enc_len(saltlen);
 encoded_stored_len = pg_b64_enc_len(SCRAM_KEY_LEN);
 encoded_server_len = pg_b64_enc_len(SCRAM_KEY_LEN);

 maxlen = strlen("SCRAM-SHA-256") + 1
  + 10 + 1
  + encoded_salt_len + 1
  + encoded_stored_len + 1
  + encoded_server_len + 1;






 result = palloc(maxlen);


 p = result + sprintf(result, "SCRAM-SHA-256$%d:", iterations);


 encoded_result = pg_b64_encode(salt, saltlen, p, encoded_salt_len);
 if (encoded_result < 0)
 {




  elog(ERROR, "could not encode salt");

 }
 p += encoded_result;
 *(p++) = '$';


 encoded_result = pg_b64_encode((char *) stored_key, SCRAM_KEY_LEN, p,
           encoded_stored_len);
 if (encoded_result < 0)
 {




  elog(ERROR, "could not encode stored key");

 }

 p += encoded_result;
 *(p++) = ':';


 encoded_result = pg_b64_encode((char *) server_key, SCRAM_KEY_LEN, p,
           encoded_server_len);
 if (encoded_result < 0)
 {




  elog(ERROR, "could not encode server key");

 }

 p += encoded_result;
 *(p++) = '\0';

 Assert(p - result <= maxlen);

 return result;
}
