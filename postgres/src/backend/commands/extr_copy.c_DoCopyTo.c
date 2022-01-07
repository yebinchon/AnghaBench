
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_6__ {int * filename; } ;
typedef TYPE_1__* CopyState ;


 int CopyTo (TYPE_1__*) ;
 scalar_t__ DestRemote ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int SendCopyBegin (TYPE_1__*) ;
 int SendCopyEnd (TYPE_1__*) ;
 int pq_endcopyout (int) ;
 scalar_t__ whereToSendOutput ;

__attribute__((used)) static uint64
DoCopyTo(CopyState cstate)
{
 bool pipe = (cstate->filename == ((void*)0));
 bool fe_copy = (pipe && whereToSendOutput == DestRemote);
 uint64 processed;

 PG_TRY();
 {
  if (fe_copy)
   SendCopyBegin(cstate);

  processed = CopyTo(cstate);

  if (fe_copy)
   SendCopyEnd(cstate);
 }
 PG_CATCH();
 {





  pq_endcopyout(1);
  PG_RE_THROW();
 }
 PG_END_TRY();

 return processed;
}
