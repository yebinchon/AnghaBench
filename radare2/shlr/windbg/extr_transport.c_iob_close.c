
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* close ) (void*) ;} ;


 int E_NOIF ;
 TYPE_1__* sel_backend ;
 int stub1 (void*) ;

int iob_close(void *fp) {
 if (!sel_backend) {
  return E_NOIF;
 }
 return sel_backend->close (fp);
}
