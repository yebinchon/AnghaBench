
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {char* client_first_message_bare; char* server_first_message; char* client_final_message_without_proof; int ServerKey; } ;
typedef TYPE_1__ scram_state ;
typedef int scram_HMAC_ctx ;


 int ERROR ;
 int SCRAM_KEY_LEN ;
 int elog (int ,char*) ;
 char* palloc (int) ;
 int pg_b64_enc_len (int) ;
 int pg_b64_encode (char const*,int,char*,int) ;
 char* psprintf (char*,char*) ;
 int scram_HMAC_final (int *,int *) ;
 int scram_HMAC_init (int *,int ,int) ;
 int scram_HMAC_update (int *,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
build_server_final_message(scram_state *state)
{
 uint8 ServerSignature[SCRAM_KEY_LEN];
 char *server_signature_base64;
 int siglen;
 scram_HMAC_ctx ctx;


 scram_HMAC_init(&ctx, state->ServerKey, SCRAM_KEY_LEN);
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
 scram_HMAC_final(ServerSignature, &ctx);

 siglen = pg_b64_enc_len(SCRAM_KEY_LEN);

 server_signature_base64 = palloc(siglen + 1);
 siglen = pg_b64_encode((const char *) ServerSignature,
         SCRAM_KEY_LEN, server_signature_base64,
         siglen);
 if (siglen < 0)
  elog(ERROR, "could not encode server signature");
 server_signature_base64[siglen] = '\0';
 return psprintf("v=%s", server_signature_base64);
}
