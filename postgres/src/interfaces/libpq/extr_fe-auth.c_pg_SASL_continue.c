
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int errorMessage; int sasl_state; } ;
typedef TYPE_1__ PGconn ;


 int STATUS_ERROR ;
 int STATUS_OK ;
 int free (char*) ;
 int libpq_gettext (char*) ;
 char* malloc (int) ;
 int pg_fe_scram_exchange (int ,char*,int,char**,int*,int*,int*) ;
 scalar_t__ pqGetnchar (char*,int,TYPE_1__*) ;
 int pqPacketSend (TYPE_1__*,char,char*,int) ;
 int printfPQExpBuffer (int *,int ,...) ;

__attribute__((used)) static int
pg_SASL_continue(PGconn *conn, int payloadlen, bool final)
{
 char *output;
 int outputlen;
 bool done;
 bool success;
 int res;
 char *challenge;


 challenge = malloc(payloadlen + 1);
 if (!challenge)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory allocating SASL buffer (%d)\n"),
        payloadlen);
  return STATUS_ERROR;
 }

 if (pqGetnchar(challenge, payloadlen, conn))
 {
  free(challenge);
  return STATUS_ERROR;
 }

 challenge[payloadlen] = '\0';

 pg_fe_scram_exchange(conn->sasl_state,
       challenge, payloadlen,
       &output, &outputlen,
       &done, &success);
 free(challenge);

 if (final && !done)
 {
  if (outputlen != 0)
   free(output);

  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("AuthenticationSASLFinal received from server, but SASL authentication was not completed\n"));
  return STATUS_ERROR;
 }
 if (outputlen != 0)
 {



  res = pqPacketSend(conn, 'p', output, outputlen);
  free(output);

  if (res != STATUS_OK)
   return STATUS_ERROR;
 }

 if (done && !success)
  return STATUS_ERROR;

 return STATUS_OK;
}
