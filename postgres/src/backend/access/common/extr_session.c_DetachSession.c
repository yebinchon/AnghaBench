
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * area; int * segment; } ;


 TYPE_1__* CurrentSession ;
 int dsa_detach (int *) ;
 int dsm_detach (int *) ;

void
DetachSession(void)
{

 dsm_detach(CurrentSession->segment);
 CurrentSession->segment = ((void*)0);
 dsa_detach(CurrentSession->area);
 CurrentSession->area = ((void*)0);
}
