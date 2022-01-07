
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* data; int len; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Port ;


 int AUTH_REQ_SASL ;
 int AUTH_REQ_SASL_CONT ;
 int AUTH_REQ_SASL_FIN ;
 int Assert (int) ;
 int DEBUG4 ;
 int EOF ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int FATAL ;
 int FrontendProtocol ;
 int PG_MAX_SASL_MESSAGE_LENGTH ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int SASL_EXCHANGE_CONTINUE ;
 int SASL_EXCHANGE_SUCCESS ;
 int STATUS_EOF ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 int pg_be_scram_exchange (void*,char const*,int,char**,int*,char**) ;
 int pg_be_scram_get_mechanisms (int *,TYPE_1__*) ;
 void* pg_be_scram_init (int *,char const*,char*) ;
 int pq_getbyte () ;
 scalar_t__ pq_getmessage (TYPE_1__*,int ) ;
 char* pq_getmsgbytes (TYPE_1__*,int) ;
 int pq_getmsgend (TYPE_1__*) ;
 int pq_getmsgint (TYPE_1__*,int) ;
 char* pq_getmsgrawstring (TYPE_1__*) ;
 int pq_startmsgread () ;
 int sendAuthRequest (int *,int ,char*,int) ;

__attribute__((used)) static int
CheckSCRAMAuth(Port *port, char *shadow_pass, char **logdetail)
{
 StringInfoData sasl_mechs;
 int mtype;
 StringInfoData buf;
 void *scram_opaq = ((void*)0);
 char *output = ((void*)0);
 int outputlen = 0;
 const char *input;
 int inputlen;
 int result;
 bool initial;
 if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
  ereport(FATAL,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("SASL authentication is not supported in protocol version 2")));





 initStringInfo(&sasl_mechs);

 pg_be_scram_get_mechanisms(port, &sasl_mechs);

 appendStringInfoChar(&sasl_mechs, '\0');

 sendAuthRequest(port, AUTH_REQ_SASL, sasl_mechs.data, sasl_mechs.len);
 pfree(sasl_mechs.data);







 initial = 1;
 do
 {
  pq_startmsgread();
  mtype = pq_getbyte();
  if (mtype != 'p')
  {

   if (mtype != EOF)
   {
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("expected SASL response, got message type %d",
        mtype)));
   }
   else
    return STATUS_EOF;
  }


  initStringInfo(&buf);
  if (pq_getmessage(&buf, PG_MAX_SASL_MESSAGE_LENGTH))
  {

   pfree(buf.data);
   return STATUS_ERROR;
  }

  elog(DEBUG4, "processing received SASL response of length %d", buf.len);







  if (initial)
  {
   const char *selected_mech;

   selected_mech = pq_getmsgrawstring(&buf);
   scram_opaq = pg_be_scram_init(port, selected_mech, shadow_pass);

   inputlen = pq_getmsgint(&buf, 4);
   if (inputlen == -1)
    input = ((void*)0);
   else
    input = pq_getmsgbytes(&buf, inputlen);

   initial = 0;
  }
  else
  {
   inputlen = buf.len;
   input = pq_getmsgbytes(&buf, buf.len);
  }
  pq_getmsgend(&buf);





  Assert(input == ((void*)0) || input[inputlen] == '\0');





  result = pg_be_scram_exchange(scram_opaq, input, inputlen,
           &output, &outputlen,
           logdetail);


  pfree(buf.data);

  if (output)
  {



   elog(DEBUG4, "sending SASL challenge of length %u", outputlen);

   if (result == SASL_EXCHANGE_SUCCESS)
    sendAuthRequest(port, AUTH_REQ_SASL_FIN, output, outputlen);
   else
    sendAuthRequest(port, AUTH_REQ_SASL_CONT, output, outputlen);

   pfree(output);
  }
 } while (result == SASL_EXCHANGE_CONTINUE);


 if (result != SASL_EXCHANGE_SUCCESS)
 {
  return STATUS_ERROR;
 }

 return STATUS_OK;
}
