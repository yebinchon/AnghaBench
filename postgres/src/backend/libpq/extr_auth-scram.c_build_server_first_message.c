
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* server_nonce; int server_first_message; int iterations; int salt; int client_nonce; } ;
typedef TYPE_1__ scram_state ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int SCRAM_RAW_NONCE_LEN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* palloc (int) ;
 int pg_b64_enc_len (int) ;
 int pg_b64_encode (char*,int,char*,int) ;
 int pg_strong_random (char*,int) ;
 int psprintf (char*,int ,char*,int ,int ) ;
 char* pstrdup (int ) ;

__attribute__((used)) static char *
build_server_first_message(scram_state *state)
{
 char raw_nonce[SCRAM_RAW_NONCE_LEN];
 int encoded_len;

 if (!pg_strong_random(raw_nonce, SCRAM_RAW_NONCE_LEN))
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("could not generate random nonce")));

 encoded_len = pg_b64_enc_len(SCRAM_RAW_NONCE_LEN);

 state->server_nonce = palloc(encoded_len + 1);
 encoded_len = pg_b64_encode(raw_nonce, SCRAM_RAW_NONCE_LEN,
        state->server_nonce, encoded_len);
 if (encoded_len < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("could not encode random nonce")));
 state->server_nonce[encoded_len] = '\0';

 state->server_first_message =
  psprintf("r=%s%s,s=%s,i=%u",
     state->client_nonce, state->server_nonce,
     state->salt, state->iterations);

 return pstrdup(state->server_first_message);
}
