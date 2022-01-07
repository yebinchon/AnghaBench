
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int log_count; int log_fp; } ;
struct TYPE_10__ {char* guid; } ;
struct TYPE_9__ {int last_t; char* guid; } ;
struct TYPE_8__ {char* url; } ;
typedef TYPE_1__ REGISTRY_URL ;
typedef TYPE_2__ REGISTRY_PERSON ;
typedef TYPE_3__ REGISTRY_MACHINE ;


 int error (char*) ;
 scalar_t__ fprintf (int ,char*,char,int,char*,char*,char*,char*) ;
 scalar_t__ likely (int ) ;
 TYPE_7__ registry ;
 int registry_db_save () ;
 int registry_db_should_be_saved () ;
 scalar_t__ unlikely (int) ;

void registry_log(char action, REGISTRY_PERSON *p, REGISTRY_MACHINE *m, REGISTRY_URL *u, char *name) {
    if(likely(registry.log_fp)) {
        if(unlikely(fprintf(registry.log_fp, "%c\t%08x\t%s\t%s\t%s\t%s\n",
                action,
                p->last_t,
                p->guid,
                m->guid,
                name,
                u->url) < 0))
            error("Registry: failed to save log. Registry data may be lost in case of abnormal restart.");



        registry.log_count++;




        if(unlikely(registry_db_should_be_saved()))
            registry_db_save();
    }
}
