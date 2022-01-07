
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* smgr_init ) () ;} ;


 int NSmgr ;
 int on_proc_exit (int ,int ) ;
 int smgrshutdown ;
 TYPE_1__* smgrsw ;
 int stub1 () ;

void
smgrinit(void)
{
 int i;

 for (i = 0; i < NSmgr; i++)
 {
  if (smgrsw[i].smgr_init)
   smgrsw[i].smgr_init();
 }


 on_proc_exit(smgrshutdown, 0);
}
