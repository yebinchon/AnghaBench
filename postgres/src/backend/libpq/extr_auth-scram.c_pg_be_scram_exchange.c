
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int state; char* logdetail; int doomed; } ;
typedef TYPE_1__ scram_state ;


 int Assert (int) ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int SASL_EXCHANGE_CONTINUE ;
 int SASL_EXCHANGE_FAILURE ;
 int SASL_EXCHANGE_SUCCESS ;
 int SCRAM_AUTH_FINISHED ;


 char* build_server_final_message (TYPE_1__*) ;
 char* build_server_first_message (TYPE_1__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 char* pstrdup (char*) ;
 int read_client_final_message (TYPE_1__*,char const*) ;
 int read_client_first_message (TYPE_1__*,char const*) ;
 int strlen (char const*) ;
 int verify_client_proof (TYPE_1__*) ;
 int verify_final_nonce (TYPE_1__*) ;

int
pg_be_scram_exchange(void *opaq, const char *input, int inputlen,
      char **output, int *outputlen, char **logdetail)
{
 scram_state *state = (scram_state *) opaq;
 int result;

 *output = ((void*)0);







 if (input == ((void*)0))
 {
  Assert(state->state == 129);

  *output = pstrdup("");
  *outputlen = 0;
  return SASL_EXCHANGE_CONTINUE;
 }





 if (inputlen == 0)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("The message is empty.")));
 if (inputlen != strlen(input))
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Message length does not match input length.")));

 switch (state->state)
 {
  case 129:






   read_client_first_message(state, input);


   *output = build_server_first_message(state);

   state->state = 128;
   result = SASL_EXCHANGE_CONTINUE;
   break;

  case 128:






   read_client_final_message(state, input);

   if (!verify_final_nonce(state))
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("invalid SCRAM response"),
       errdetail("Nonce does not match.")));
   if (!verify_client_proof(state) || state->doomed)
   {
    result = SASL_EXCHANGE_FAILURE;
    break;
   }


   *output = build_server_final_message(state);


   result = SASL_EXCHANGE_SUCCESS;
   state->state = SCRAM_AUTH_FINISHED;
   break;

  default:
   elog(ERROR, "invalid SCRAM exchange state");
   result = SASL_EXCHANGE_FAILURE;
 }

 if (result == SASL_EXCHANGE_FAILURE && state->logdetail && logdetail)
  *logdetail = state->logdetail;

 if (*output)
  *outputlen = strlen(*output);

 return result;
}
