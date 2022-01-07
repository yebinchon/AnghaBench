
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; struct TYPE_7__* next; } ;
struct TYPE_6__ {char* hostname; TYPE_2__* templates; } ;
typedef TYPE_1__ RRDHOST ;
typedef TYPE_2__ RRDCALCTEMPLATE ;


 int D_HEALTH ;
 int debug (int ,char*,int ,char*) ;
 int error (char*,int ,char*) ;
 int rrdcalctemplate_free (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

inline void rrdcalctemplate_unlink_and_free(RRDHOST *host, RRDCALCTEMPLATE *rt) {
    if(unlikely(!rt)) return;

    debug(D_HEALTH, "Health removing template '%s' of host '%s'", rt->name, host->hostname);

    if(host->templates == rt) {
        host->templates = rt->next;
    }
    else {
        RRDCALCTEMPLATE *t;
        for (t = host->templates; t && t->next != rt; t = t->next ) ;
        if(t) {
            t->next = rt->next;
            rt->next = ((void*)0);
        }
        else
            error("Cannot find RRDCALCTEMPLATE '%s' linked in host '%s'", rt->name, host->hostname);
    }

    rrdcalctemplate_free(rt);
}
