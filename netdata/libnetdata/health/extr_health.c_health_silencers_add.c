
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* silencers; } ;
struct TYPE_4__ {int families; int hosts; int contexts; int charts; int alarms; struct TYPE_4__* next; } ;
typedef TYPE_1__ SILENCER ;


 int D_HEALTH ;
 int debug (int ,char*,int ,int ,int ,int ,int ) ;
 TYPE_2__* silencers ;

void health_silencers_add(SILENCER *silencer) {

    silencer->next = silencers->silencers;
    silencers->silencers = silencer;
    debug(D_HEALTH, "HEALTH command API: Added silencer %s:%s:%s:%s:%s", silencer->alarms,
          silencer->charts, silencer->contexts, silencer->hosts, silencer->families
    );
}
