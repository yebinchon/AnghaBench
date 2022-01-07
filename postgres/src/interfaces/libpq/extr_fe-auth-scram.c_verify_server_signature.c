
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int scram_HMAC_ctx ;
struct TYPE_3__ {char* client_first_message_bare; char* server_first_message; char* client_final_message_without_proof; int ServerSignature; int SaltedPassword; } ;
typedef TYPE_1__ fe_scram_state ;


 int SCRAM_KEY_LEN ;
 scalar_t__ memcmp (int *,int ,int) ;
 int scram_HMAC_final (int *,int *) ;
 int scram_HMAC_init (int *,int *,int) ;
 int scram_HMAC_update (int *,char*,int) ;
 int scram_ServerKey (int ,int *) ;
 int strlen (char*) ;

__attribute__((used)) static bool
verify_server_signature(fe_scram_state *state)
{
 uint8 expected_ServerSignature[SCRAM_KEY_LEN];
 uint8 ServerKey[SCRAM_KEY_LEN];
 scram_HMAC_ctx ctx;

 scram_ServerKey(state->SaltedPassword, ServerKey);


 scram_HMAC_init(&ctx, ServerKey, SCRAM_KEY_LEN);
 scram_HMAC_update(&ctx,
       state->client_first_message_bare,
       strlen(state->client_first_message_bare));
 scram_HMAC_update(&ctx, ",", 1);
 scram_HMAC_update(&ctx,
       state->server_first_message,
       strlen(state->server_first_message));
 scram_HMAC_update(&ctx, ",", 1);
 scram_HMAC_update(&ctx,
       state->client_final_message_without_proof,
       strlen(state->client_final_message_without_proof));
 scram_HMAC_final(expected_ServerSignature, &ctx);

 if (memcmp(expected_ServerSignature, state->ServerSignature, SCRAM_KEY_LEN) != 0)
  return 0;

 return 1;
}
