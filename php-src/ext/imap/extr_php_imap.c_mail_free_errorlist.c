
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {struct TYPE_5__* next; TYPE_1__ text; } ;
typedef TYPE_2__ ERRORLIST ;


 int fs_give (void**) ;

void mail_free_errorlist(ERRORLIST **errlist)
{
 if (*errlist) {
  if ((*errlist)->text.data) {
   fs_give((void **) &(*errlist)->text.data);
  }
  mail_free_errorlist (&(*errlist)->next);
  fs_give((void **) errlist);
 }
}
