
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int all_alarms; int stype; } ;
struct TYPE_5__ {int boolean; int string; } ;
struct TYPE_6__ {int type; int (* callback_function ) (TYPE_2__*) ;TYPE_1__ data; int name; int callback_data; } ;
typedef int SILENCER ;
typedef TYPE_2__ JSON_ENTRY ;


 int D_HEALTH ;






 int STYPE_DISABLE_ALARMS ;
 int STYPE_SILENCE_NOTIFICATIONS ;
 int create_silencer () ;
 int debug (int ,char*,...) ;
 int health_silencers_add (int ) ;
 int * health_silencers_addparam (int ,int ,int ) ;
 TYPE_3__* silencers ;
 int strcmp (int ,char*) ;

int health_silencers_json_read_callback(JSON_ENTRY *e)
{
    switch(e->type) {
        case 129:

            e->callback_function = health_silencers_json_read_callback;
            if(strcmp(e->name,"")) {

                debug(D_HEALTH, "JSON: Got object with a name, initializing new silencer for %s",e->name);

            e->callback_data = create_silencer();
            if(e->callback_data) {
                health_silencers_add(e->callback_data);
            }

            }

            break;

        case 133:
            e->callback_function = health_silencers_json_read_callback;
            break;

        case 128:
            if(!strcmp(e->name,"type")) {
                debug(D_HEALTH, "JSON: Processing type=%s",e->data.string);
                if (!strcmp(e->data.string,"SILENCE")) silencers->stype = STYPE_SILENCE_NOTIFICATIONS;
                else if (!strcmp(e->data.string,"DISABLE")) silencers->stype = STYPE_DISABLE_ALARMS;
            } else {
                debug(D_HEALTH, "JSON: Adding %s=%s", e->name, e->data.string);
                SILENCER *test = health_silencers_addparam(e->callback_data, e->name, e->data.string);
                (void)test;
            }
            break;

        case 132:
            debug(D_HEALTH, "JSON: Processing all_alarms");
            silencers->all_alarms=e->data.boolean?1:0;
            break;

        case 130:
        case 131:
            break;
    }

    return 0;
}
