
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * silencers; int stype; scalar_t__ all_alarms; } ;
typedef int SILENCERS ;


 int STYPE_NONE ;
 TYPE_1__* mallocz (int) ;
 TYPE_1__* silencers ;

int health_initialize_global_silencers() {
    silencers = mallocz(sizeof(SILENCERS));
    silencers->all_alarms=0;
    silencers->stype=STYPE_NONE;
    silencers->silencers=((void*)0);

    return 0;
}
