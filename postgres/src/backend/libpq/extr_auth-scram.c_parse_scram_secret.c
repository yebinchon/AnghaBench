
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int SCRAM_KEY_LEN ;
 scalar_t__ errno ;
 int memcpy (int *,char*,int) ;
 char* palloc (int) ;
 int pg_b64_dec_len (int ) ;
 int pg_b64_decode (char*,int ,char*,int) ;
 char* pstrdup (char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;
 int strtol (char*,char**,int) ;

bool
parse_scram_secret(const char *secret, int *iterations, char **salt,
      uint8 *stored_key, uint8 *server_key)
{
 char *v;
 char *p;
 char *scheme_str;
 char *salt_str;
 char *iterations_str;
 char *storedkey_str;
 char *serverkey_str;
 int decoded_len;
 char *decoded_salt_buf;
 char *decoded_stored_buf;
 char *decoded_server_buf;






 v = pstrdup(secret);
 if ((scheme_str = strtok(v, "$")) == ((void*)0))
  goto invalid_secret;
 if ((iterations_str = strtok(((void*)0), ":")) == ((void*)0))
  goto invalid_secret;
 if ((salt_str = strtok(((void*)0), "$")) == ((void*)0))
  goto invalid_secret;
 if ((storedkey_str = strtok(((void*)0), ":")) == ((void*)0))
  goto invalid_secret;
 if ((serverkey_str = strtok(((void*)0), "")) == ((void*)0))
  goto invalid_secret;


 if (strcmp(scheme_str, "SCRAM-SHA-256") != 0)
  goto invalid_secret;

 errno = 0;
 *iterations = strtol(iterations_str, &p, 10);
 if (*p || errno != 0)
  goto invalid_secret;





 decoded_len = pg_b64_dec_len(strlen(salt_str));
 decoded_salt_buf = palloc(decoded_len);
 decoded_len = pg_b64_decode(salt_str, strlen(salt_str),
        decoded_salt_buf, decoded_len);
 if (decoded_len < 0)
  goto invalid_secret;
 *salt = pstrdup(salt_str);




 decoded_len = pg_b64_dec_len(strlen(storedkey_str));
 decoded_stored_buf = palloc(decoded_len);
 decoded_len = pg_b64_decode(storedkey_str, strlen(storedkey_str),
        decoded_stored_buf, decoded_len);
 if (decoded_len != SCRAM_KEY_LEN)
  goto invalid_secret;
 memcpy(stored_key, decoded_stored_buf, SCRAM_KEY_LEN);

 decoded_len = pg_b64_dec_len(strlen(serverkey_str));
 decoded_server_buf = palloc(decoded_len);
 decoded_len = pg_b64_decode(serverkey_str, strlen(serverkey_str),
        decoded_server_buf, decoded_len);
 if (decoded_len != SCRAM_KEY_LEN)
  goto invalid_secret;
 memcpy(server_key, decoded_server_buf, SCRAM_KEY_LEN);

 return 1;

invalid_secret:
 *salt = ((void*)0);
 return 0;
}
