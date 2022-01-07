
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int noticeProcArg; int (* noticeProc ) (int ,int ) ;} ;
struct TYPE_6__ {TYPE_1__ noticeHooks; } ;
typedef TYPE_2__ PGresult ;


 int PQresultErrorMessage (TYPE_2__ const*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
defaultNoticeReceiver(void *arg, const PGresult *res)
{
 (void) arg;
 if (res->noticeHooks.noticeProc != ((void*)0))
  res->noticeHooks.noticeProc(res->noticeHooks.noticeProcArg,
         PQresultErrorMessage(res));
}
