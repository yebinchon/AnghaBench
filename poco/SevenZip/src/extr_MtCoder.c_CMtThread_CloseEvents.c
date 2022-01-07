
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int canWrite; int canRead; } ;
typedef TYPE_1__ CMtThread ;


 int Event_Close (int *) ;

__attribute__((used)) static void CMtThread_CloseEvents(CMtThread *p)
{
  Event_Close(&p->canRead);
  Event_Close(&p->canWrite);
}
