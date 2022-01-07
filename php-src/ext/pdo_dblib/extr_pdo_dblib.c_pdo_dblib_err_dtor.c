
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * oserrstr; int * lastmsg; int * dberrstr; } ;
typedef TYPE_1__ pdo_dblib_err ;


 int efree (int *) ;

void pdo_dblib_err_dtor(pdo_dblib_err *err)
{
 if (!err) {
  return;
 }

 if (err->dberrstr) {
  efree(err->dberrstr);
  err->dberrstr = ((void*)0);
 }
 if (err->lastmsg) {
  efree(err->lastmsg);
  err->lastmsg = ((void*)0);
 }
 if (err->oserrstr) {
  efree(err->oserrstr);
  err->oserrstr = ((void*)0);
 }
}
