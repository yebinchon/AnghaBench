
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ hash; scalar_t__ hash_chart; scalar_t__ chart; scalar_t__ name; struct TYPE_5__* next; } ;
struct TYPE_4__ {int hostname; TYPE_2__* alarms; } ;
typedef TYPE_1__ RRDHOST ;
typedef TYPE_2__ RRDCALC ;


 int D_HEALTH ;
 int debug (int ,char*,char const*,char const*,int ) ;
 int error (char*,char const*) ;
 int info (char*,char const*,char const*,int ) ;
 scalar_t__ simple_hash (char const*) ;
 int strcmp (char const*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

inline int rrdcalc_exists(RRDHOST *host, const char *chart, const char *name, uint32_t hash_chart, uint32_t hash_name) {
    RRDCALC *rc;

    if(unlikely(!chart)) {
        error("attempt to find RRDCALC '%s' without giving a chart name", name);
        return 1;
    }

    if(unlikely(!hash_chart)) hash_chart = simple_hash(chart);
    if(unlikely(!hash_name)) hash_name = simple_hash(name);


    for(rc = host->alarms; rc ; rc = rc->next) {
        if (unlikely(rc->chart && rc->hash == hash_name && rc->hash_chart == hash_chart && !strcmp(name, rc->name) && !strcmp(chart, rc->chart))) {
            debug(D_HEALTH, "Health alarm '%s.%s' already exists in host '%s'.", chart, name, host->hostname);
            info("Health alarm '%s.%s' already exists in host '%s'.", chart, name, host->hostname);
            return 1;
        }
    }

    return 0;
}
