
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int ERROR ;
 int SCRAM_DEFAULT_ITERATIONS ;
 int SCRAM_DEFAULT_SALT_LEN ;
 int SCRAM_KEY_LEN ;
 int elog (int ,char*) ;
 int memset (int *,int ,int ) ;
 scalar_t__ palloc (int) ;
 int pg_b64_enc_len (int ) ;
 int pg_b64_encode (char*,int ,char*,int) ;
 char* scram_mock_salt (char const*) ;

__attribute__((used)) static void
mock_scram_secret(const char *username, int *iterations, char **salt,
     uint8 *stored_key, uint8 *server_key)
{
 char *raw_salt;
 char *encoded_salt;
 int encoded_len;


 raw_salt = scram_mock_salt(username);

 encoded_len = pg_b64_enc_len(SCRAM_DEFAULT_SALT_LEN);

 encoded_salt = (char *) palloc(encoded_len + 1);
 encoded_len = pg_b64_encode(raw_salt, SCRAM_DEFAULT_SALT_LEN, encoded_salt,
        encoded_len);







 if (encoded_len < 0)
  elog(ERROR, "could not encode salt");
 encoded_salt[encoded_len] = '\0';

 *salt = encoded_salt;
 *iterations = SCRAM_DEFAULT_ITERATIONS;


 memset(stored_key, 0, SCRAM_KEY_LEN);
 memset(server_key, 0, SCRAM_KEY_LEN);
}
