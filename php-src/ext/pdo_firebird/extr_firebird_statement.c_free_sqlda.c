
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sqlind; } ;
typedef TYPE_1__ XSQLVAR ;
struct TYPE_5__ {int sqld; TYPE_1__* sqlvar; } ;
typedef TYPE_2__ XSQLDA ;


 int efree (scalar_t__) ;

__attribute__((used)) static void free_sqlda(XSQLDA const *sqlda)
{
 int i;

 for (i = 0; i < sqlda->sqld; ++i) {
  XSQLVAR const *var = &sqlda->sqlvar[i];

  if (var->sqlind) {
   efree(var->sqlind);
  }
 }
}
