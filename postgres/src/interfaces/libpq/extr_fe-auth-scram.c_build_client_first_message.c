
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* client_nonce; void* client_first_message_bare; int sasl_mechanism; TYPE_3__* conn; } ;
typedef TYPE_1__ fe_scram_state ;
struct TYPE_13__ {char* channel_binding; int errorMessage; scalar_t__ ssl_in_use; } ;
struct TYPE_12__ {int len; scalar_t__ data; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_3__ PGconn ;


 int Assert (scalar_t__) ;
 scalar_t__ PQExpBufferDataBroken (TYPE_2__) ;
 int SCRAM_RAW_NONCE_LEN ;
 int SCRAM_SHA_256_PLUS_NAME ;
 int appendPQExpBuffer (TYPE_2__*,char*,char*) ;
 int appendPQExpBufferChar (TYPE_2__*,char) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 int libpq_gettext (char*) ;
 char* malloc (int) ;
 int pg_b64_enc_len (int ) ;
 int pg_b64_encode (char*,int ,char*,int) ;
 int pg_strong_random (char*,int ) ;
 int printfPQExpBuffer (int *,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 void* strdup (scalar_t__) ;
 int termPQExpBuffer (TYPE_2__*) ;

__attribute__((used)) static char *
build_client_first_message(fe_scram_state *state)
{
 PGconn *conn = state->conn;
 char raw_nonce[SCRAM_RAW_NONCE_LEN + 1];
 char *result;
 int channel_info_len;
 int encoded_len;
 PQExpBufferData buf;





 if (!pg_strong_random(raw_nonce, SCRAM_RAW_NONCE_LEN))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not generate nonce\n"));
  return ((void*)0);
 }

 encoded_len = pg_b64_enc_len(SCRAM_RAW_NONCE_LEN);

 state->client_nonce = malloc(encoded_len + 1);
 if (state->client_nonce == ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return ((void*)0);
 }
 encoded_len = pg_b64_encode(raw_nonce, SCRAM_RAW_NONCE_LEN,
        state->client_nonce, encoded_len);
 if (encoded_len < 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("could not encode nonce\n"));
  return ((void*)0);
 }
 state->client_nonce[encoded_len] = '\0';
 initPQExpBuffer(&buf);




 if (strcmp(state->sasl_mechanism, SCRAM_SHA_256_PLUS_NAME) == 0)
 {
  Assert(conn->ssl_in_use);
  appendPQExpBufferStr(&buf, "p=tls-server-end-point");
 }
 else
 {



  appendPQExpBufferChar(&buf, 'n');
 }

 if (PQExpBufferDataBroken(buf))
  goto oom_error;

 channel_info_len = buf.len;

 appendPQExpBuffer(&buf, ",,n=,r=%s", state->client_nonce);
 if (PQExpBufferDataBroken(buf))
  goto oom_error;





 state->client_first_message_bare = strdup(buf.data + channel_info_len + 2);
 if (!state->client_first_message_bare)
  goto oom_error;

 result = strdup(buf.data);
 if (result == ((void*)0))
  goto oom_error;

 termPQExpBuffer(&buf);
 return result;

oom_error:
 termPQExpBuffer(&buf);
 printfPQExpBuffer(&conn->errorMessage,
       libpq_gettext("out of memory\n"));
 return ((void*)0);
}
