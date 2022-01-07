
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int COMMERROR ;
 int DEBUG1 ;
 int DestNone ;
 int EOF ;
 int ERRCODE_CONNECTION_DOES_NOT_EXIST ;
 int ERRCODE_CONNECTION_FAILURE ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int FATAL ;
 int FrontendProtocol ;
 int GetOldFunctionMessage (int ) ;
 int HOLD_CANCEL_INTERRUPTS () ;
 scalar_t__ IsTransactionState () ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int RESUME_CANCEL_INTERRUPTS () ;
 int doing_extended_query_message ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int ignore_till_sync ;
 int pq_endmsgread () ;
 int pq_getbyte () ;
 scalar_t__ pq_getmessage (int ,int ) ;
 int pq_getstring (int ) ;
 int pq_startmsgread () ;
 int whereToSendOutput ;

__attribute__((used)) static int
SocketBackend(StringInfo inBuf)
{
 int qtype;




 HOLD_CANCEL_INTERRUPTS();
 pq_startmsgread();
 qtype = pq_getbyte();

 if (qtype == EOF)
 {
  if (IsTransactionState())
   ereport(COMMERROR,
     (errcode(ERRCODE_CONNECTION_FAILURE),
      errmsg("unexpected EOF on client connection with an open transaction")));
  else
  {





   whereToSendOutput = DestNone;
   ereport(DEBUG1,
     (errcode(ERRCODE_CONNECTION_DOES_NOT_EXIST),
      errmsg("unexpected EOF on client connection")));
  }
  return qtype;
 }
 switch (qtype)
 {
  case 'Q':
   doing_extended_query_message = 0;
   if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
   {

    if (pq_getstring(inBuf))
    {
     if (IsTransactionState())
      ereport(COMMERROR,
        (errcode(ERRCODE_CONNECTION_FAILURE),
         errmsg("unexpected EOF on client connection with an open transaction")));
     else
     {





      whereToSendOutput = DestNone;
      ereport(DEBUG1,
        (errcode(ERRCODE_CONNECTION_DOES_NOT_EXIST),
         errmsg("unexpected EOF on client connection")));
     }
     return EOF;
    }
   }
   break;

  case 'F':
   doing_extended_query_message = 0;
   if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
   {
    if (GetOldFunctionMessage(inBuf))
    {
     if (IsTransactionState())
      ereport(COMMERROR,
        (errcode(ERRCODE_CONNECTION_FAILURE),
         errmsg("unexpected EOF on client connection with an open transaction")));
     else
     {





      whereToSendOutput = DestNone;
      ereport(DEBUG1,
        (errcode(ERRCODE_CONNECTION_DOES_NOT_EXIST),
         errmsg("unexpected EOF on client connection")));
     }
     return EOF;
    }
   }
   break;

  case 'X':
   doing_extended_query_message = 0;
   ignore_till_sync = 0;
   break;

  case 'B':
  case 'C':
  case 'D':
  case 'E':
  case 'H':
  case 'P':
   doing_extended_query_message = 1;

   if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
    ereport(FATAL,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("invalid frontend message type %d", qtype)));
   break;

  case 'S':

   ignore_till_sync = 0;

   doing_extended_query_message = 0;

   if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
    ereport(FATAL,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("invalid frontend message type %d", qtype)));
   break;

  case 'd':
  case 'c':
  case 'f':
   doing_extended_query_message = 0;

   if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
    ereport(FATAL,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("invalid frontend message type %d", qtype)));
   break;

  default:






   ereport(FATAL,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("invalid frontend message type %d", qtype)));
   break;
 }






 if (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3)
 {
  if (pq_getmessage(inBuf, 0))
   return EOF;
 }
 else
  pq_endmsgread();
 RESUME_CANCEL_INTERRUPTS();

 return qtype;
}
