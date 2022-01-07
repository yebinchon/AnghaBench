
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_3__ {int copy_dest; scalar_t__ binary; int fe_msgbuf; int attnumlist; } ;
typedef int StringInfoData ;
typedef TYPE_1__* CopyState ;


 int COPY_NEW_FE ;
 int COPY_OLD_FE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int FrontendProtocol ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int list_length (int ) ;
 int makeStringInfo () ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_flush () ;
 int pq_putemptymessage (char) ;
 int pq_sendbyte (int *,int) ;
 int pq_sendint16 (int *,int) ;
 int pq_startmsgread () ;

__attribute__((used)) static void
ReceiveCopyBegin(CopyState cstate)
{
 if (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3)
 {

  StringInfoData buf;
  int natts = list_length(cstate->attnumlist);
  int16 format = (cstate->binary ? 1 : 0);
  int i;

  pq_beginmessage(&buf, 'G');
  pq_sendbyte(&buf, format);
  pq_sendint16(&buf, natts);
  for (i = 0; i < natts; i++)
   pq_sendint16(&buf, format);
  pq_endmessage(&buf);
  cstate->copy_dest = COPY_NEW_FE;
  cstate->fe_msgbuf = makeStringInfo();
 }
 else
 {

  if (cstate->binary)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("COPY BINARY is not supported to stdout or from stdin")));
  pq_putemptymessage('G');

  pq_startmsgread();
  cstate->copy_dest = COPY_OLD_FE;
 }

 pq_flush();
}
