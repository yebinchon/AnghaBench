
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state; TYPE_2__* conn; } ;
typedef TYPE_1__ fe_scram_state ;
struct TYPE_9__ {int errorMessage; } ;
typedef TYPE_2__ PGconn ;


 int FE_SCRAM_FINISHED ;



 char* build_client_final_message (TYPE_1__*) ;
 char* build_client_first_message (TYPE_1__*) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int *,int ) ;
 int read_server_final_message (TYPE_1__*,char*) ;
 int read_server_first_message (TYPE_1__*,char*) ;
 int strlen (char*) ;
 int verify_server_signature (TYPE_1__*) ;

void
pg_fe_scram_exchange(void *opaq, char *input, int inputlen,
      char **output, int *outputlen,
      bool *done, bool *success)
{
 fe_scram_state *state = (fe_scram_state *) opaq;
 PGconn *conn = state->conn;

 *done = 0;
 *success = 0;
 *output = ((void*)0);
 *outputlen = 0;





 if (state->state != 130)
 {
  if (inputlen == 0)
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("malformed SCRAM message (empty message)\n"));
   goto error;
  }
  if (inputlen != strlen(input))
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("malformed SCRAM message (length mismatch)\n"));
   goto error;
  }
 }

 switch (state->state)
 {
  case 130:

   *output = build_client_first_message(state);
   if (*output == ((void*)0))
    goto error;

   *outputlen = strlen(*output);
   *done = 0;
   state->state = 129;
   break;

  case 129:

   if (!read_server_first_message(state, input))
    goto error;

   *output = build_client_final_message(state);
   if (*output == ((void*)0))
    goto error;

   *outputlen = strlen(*output);
   *done = 0;
   state->state = 128;
   break;

  case 128:

   if (!read_server_final_message(state, input))
    goto error;





   if (verify_server_signature(state))
    *success = 1;
   else
   {
    *success = 0;
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("incorrect server signature\n"));
   }
   *done = 1;
   state->state = FE_SCRAM_FINISHED;
   break;

  default:

   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("invalid SCRAM exchange state\n"));
   goto error;
 }
 return;

error:
 *done = 1;
 *success = 0;
 return;
}
