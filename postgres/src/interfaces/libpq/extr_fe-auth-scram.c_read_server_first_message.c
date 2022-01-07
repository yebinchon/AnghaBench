
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* client_nonce; int iterations; int saltlen; int * salt; int * nonce; int * server_first_message; TYPE_2__* conn; } ;
typedef TYPE_1__ fe_scram_state ;
struct TYPE_5__ {int errorMessage; } ;
typedef TYPE_2__ PGconn ;


 int libpq_gettext (char*) ;
 int * malloc (int) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;
 int pg_b64_dec_len (scalar_t__) ;
 int pg_b64_decode (char*,scalar_t__,int *,int) ;
 int printfPQExpBuffer (int *,int ) ;
 char* read_attr_value (char**,char,int *) ;
 void* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static bool
read_server_first_message(fe_scram_state *state, char *input)
{
 PGconn *conn = state->conn;
 char *iterations_str;
 char *endptr;
 char *encoded_salt;
 char *nonce;
 int decoded_salt_len;

 state->server_first_message = strdup(input);
 if (state->server_first_message == ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return 0;
 }


 nonce = read_attr_value(&input, 'r',
       &conn->errorMessage);
 if (nonce == ((void*)0))
 {

  return 0;
 }


 if (strlen(nonce) < strlen(state->client_nonce) ||
  memcmp(nonce, state->client_nonce, strlen(state->client_nonce)) != 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("invalid SCRAM response (nonce mismatch)\n"));
  return 0;
 }

 state->nonce = strdup(nonce);
 if (state->nonce == ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return 0;
 }

 encoded_salt = read_attr_value(&input, 's', &conn->errorMessage);
 if (encoded_salt == ((void*)0))
 {

  return 0;
 }
 decoded_salt_len = pg_b64_dec_len(strlen(encoded_salt));
 state->salt = malloc(decoded_salt_len);
 if (state->salt == ((void*)0))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));
  return 0;
 }
 state->saltlen = pg_b64_decode(encoded_salt,
           strlen(encoded_salt),
           state->salt,
           decoded_salt_len);
 if (state->saltlen < 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("malformed SCRAM message (invalid salt)\n"));
  return 0;
 }

 iterations_str = read_attr_value(&input, 'i', &conn->errorMessage);
 if (iterations_str == ((void*)0))
 {

  return 0;
 }
 state->iterations = strtol(iterations_str, &endptr, 10);
 if (*endptr != '\0' || state->iterations < 1)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("malformed SCRAM message (invalid iteration count)\n"));
  return 0;
 }

 if (*input != '\0')
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("malformed SCRAM message (garbage at end of server-first-message)\n"));

 return 1;
}
