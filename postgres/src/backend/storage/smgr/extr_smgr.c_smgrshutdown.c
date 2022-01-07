
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* smgr_shutdown ) () ;} ;
typedef int Datum ;


 int NSmgr ;
 TYPE_1__* smgrsw ;
 int stub1 () ;

__attribute__((used)) static void
smgrshutdown(int code, Datum arg)
{
 int i;

 for (i = 0; i < NSmgr; i++)
 {
  if (smgrsw[i].smgr_shutdown)
   smgrsw[i].smgr_shutdown();
 }
}
