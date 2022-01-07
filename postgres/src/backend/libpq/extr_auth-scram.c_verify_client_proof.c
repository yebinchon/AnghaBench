
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {char* client_first_message_bare; char* server_first_message; char* client_final_message_without_proof; int* ClientProof; int StoredKey; } ;
typedef TYPE_1__ scram_state ;
typedef int scram_HMAC_ctx ;


 int SCRAM_KEY_LEN ;
 scalar_t__ memcmp (int*,int ,int) ;
 int scram_H (int*,int,int*) ;
 int scram_HMAC_final (int*,int *) ;
 int scram_HMAC_init (int *,int ,int) ;
 int scram_HMAC_update (int *,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static bool
verify_client_proof(scram_state *state)
{
 uint8 ClientSignature[SCRAM_KEY_LEN];
 uint8 ClientKey[SCRAM_KEY_LEN];
 uint8 client_StoredKey[SCRAM_KEY_LEN];
 scram_HMAC_ctx ctx;
 int i;


 scram_HMAC_init(&ctx, state->StoredKey, SCRAM_KEY_LEN);
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
 scram_HMAC_final(ClientSignature, &ctx);


 for (i = 0; i < SCRAM_KEY_LEN; i++)
  ClientKey[i] = state->ClientProof[i] ^ ClientSignature[i];


 scram_H(ClientKey, SCRAM_KEY_LEN, client_StoredKey);

 if (memcmp(client_StoredKey, state->StoredKey, SCRAM_KEY_LEN) != 0)
  return 0;

 return 1;
}
