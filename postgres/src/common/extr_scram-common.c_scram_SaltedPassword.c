
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int scram_HMAC_ctx ;


 int SCRAM_KEY_LEN ;
 int memcpy (int *,int *,int) ;
 int pg_hton32 (int) ;
 int scram_HMAC_final (int *,int *) ;
 int scram_HMAC_init (int *,int *,int) ;
 int scram_HMAC_update (int *,char const*,int) ;
 int strlen (char const*) ;

void
scram_SaltedPassword(const char *password,
      const char *salt, int saltlen, int iterations,
      uint8 *result)
{
 int password_len = strlen(password);
 uint32 one = pg_hton32(1);
 int i,
    j;
 uint8 Ui[SCRAM_KEY_LEN];
 uint8 Ui_prev[SCRAM_KEY_LEN];
 scram_HMAC_ctx hmac_ctx;
 scram_HMAC_init(&hmac_ctx, (uint8 *) password, password_len);
 scram_HMAC_update(&hmac_ctx, salt, saltlen);
 scram_HMAC_update(&hmac_ctx, (char *) &one, sizeof(uint32));
 scram_HMAC_final(Ui_prev, &hmac_ctx);
 memcpy(result, Ui_prev, SCRAM_KEY_LEN);


 for (i = 2; i <= iterations; i++)
 {
  scram_HMAC_init(&hmac_ctx, (uint8 *) password, password_len);
  scram_HMAC_update(&hmac_ctx, (const char *) Ui_prev, SCRAM_KEY_LEN);
  scram_HMAC_final(Ui, &hmac_ctx);
  for (j = 0; j < SCRAM_KEY_LEN; j++)
   result[j] ^= Ui[j];
  memcpy(Ui_prev, Ui, SCRAM_KEY_LEN);
 }
}
