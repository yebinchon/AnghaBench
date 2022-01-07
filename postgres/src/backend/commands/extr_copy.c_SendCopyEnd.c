
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ copy_dest; TYPE_1__* fe_msgbuf; } ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef TYPE_2__* CopyState ;


 int Assert (int) ;
 scalar_t__ COPY_NEW_FE ;
 int CopySendData (TYPE_2__*,char*,int) ;
 int CopySendEndOfRow (TYPE_2__*) ;
 int pq_endcopyout (int) ;
 int pq_putemptymessage (char) ;

__attribute__((used)) static void
SendCopyEnd(CopyState cstate)
{
 if (cstate->copy_dest == COPY_NEW_FE)
 {

  Assert(cstate->fe_msgbuf->len == 0);

  pq_putemptymessage('c');
 }
 else
 {
  CopySendData(cstate, "\\.", 2);

  CopySendEndOfRow(cstate);
  pq_endcopyout(0);
 }
}
