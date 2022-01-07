
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfoData ;
typedef int CommandDest ;
 int FrontendProtocol ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int TransactionBlockStatusCode () ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_flush () ;
 int pq_putemptymessage (char) ;
 int pq_sendbyte (int *,int ) ;

void
ReadyForQuery(CommandDest dest)
{
 switch (dest)
 {
  case 135:
  case 134:
  case 133:
   if (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3)
   {
    StringInfoData buf;

    pq_beginmessage(&buf, 'Z');
    pq_sendbyte(&buf, TransactionBlockStatusCode());
    pq_endmessage(&buf);
   }
   else
    pq_putemptymessage('Z');

   pq_flush();
   break;

  case 136:
  case 138:
  case 132:
  case 128:
  case 137:
  case 139:
  case 131:
  case 130:
  case 129:
   break;
 }
}
