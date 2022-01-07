
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int scram_HMAC_ctx ;


 int SCRAM_KEY_LEN ;
 int scram_HMAC_final (int *,int *) ;
 int scram_HMAC_init (int *,int const*,int ) ;
 int scram_HMAC_update (int *,char*,int ) ;
 int strlen (char*) ;

void
scram_ServerKey(const uint8 *salted_password, uint8 *result)
{
 scram_HMAC_ctx ctx;

 scram_HMAC_init(&ctx, salted_password, SCRAM_KEY_LEN);
 scram_HMAC_update(&ctx, "Server Key", strlen("Server Key"));
 scram_HMAC_final(result, &ctx);
}
