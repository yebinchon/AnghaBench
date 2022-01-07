
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extstats; int alist; } ;
typedef TYPE_1__ CreateStmtContext ;


 int list_concat (int ,int ) ;

__attribute__((used)) static void
transformExtendedStatistics(CreateStmtContext *cxt)
{
 cxt->alist = list_concat(cxt->alist, cxt->extstats);
}
