
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char cbind_flag; char* ClientProof; char* client_final_message_without_proof; void* client_final_nonce; int port; scalar_t__ channel_binding_in_use; } ;
typedef TYPE_1__ scram_state ;


 int Assert (int) ;
 int ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int SCRAM_KEY_LEN ;
 char* be_tls_get_certificate_hash (int ,size_t*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int memcpy (char*,char const*,int) ;
 void* palloc (int) ;
 int pfree (char*) ;
 int pg_b64_dec_len (size_t) ;
 int pg_b64_decode (char*,size_t,char*,int) ;
 int pg_b64_enc_len (size_t) ;
 int pg_b64_encode (char*,size_t,char*,int) ;
 char* pstrdup (char const*) ;
 char* read_any_attr (char**,char*) ;
 void* read_attr_value (char**,char) ;
 int snprintf (char*,size_t,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
read_client_final_message(scram_state *state, const char *input)
{
 char attr;
 char *channel_binding;
 char *value;
 char *begin,
      *proof;
 char *p;
 char *client_proof;
 int client_proof_len;

 begin = p = pstrdup(input);
 channel_binding = read_attr_value(&p, 'c');
 if (state->channel_binding_in_use)
 {
  elog(ERROR, "channel binding not supported by this build");

 }
 else
 {






  if (!(strcmp(channel_binding, "biws") == 0 && state->cbind_flag == 'n') &&
   !(strcmp(channel_binding, "eSws") == 0 && state->cbind_flag == 'y'))
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      (errmsg("unexpected SCRAM channel-binding attribute in client-final-message"))));
 }

 state->client_final_nonce = read_attr_value(&p, 'r');


 do
 {
  proof = p - 1;
  value = read_any_attr(&p, &attr);
 } while (attr != 'p');

 client_proof_len = pg_b64_dec_len(strlen(value));
 client_proof = palloc(client_proof_len);
 if (pg_b64_decode(value, strlen(value), client_proof,
       client_proof_len) != SCRAM_KEY_LEN)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Malformed proof in client-final-message.")));
 memcpy(state->ClientProof, client_proof, SCRAM_KEY_LEN);
 pfree(client_proof);

 if (*p != '\0')
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Garbage found at the end of client-final-message.")));

 state->client_final_message_without_proof = palloc(proof - begin + 1);
 memcpy(state->client_final_message_without_proof, input, proof - begin);
 state->client_final_message_without_proof[proof - begin] = '\0';
}
