
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timezone; } ;
typedef TYPE_1__ RRDHOST ;


 int freez (void*) ;
 int strcmp (scalar_t__,char const*) ;
 scalar_t__ strdupz (char const*) ;

__attribute__((used)) static inline void rrdhost_init_timezone(RRDHOST *host, const char *timezone) {
    if(host->timezone && timezone && !strcmp(host->timezone, timezone))
        return;

    void *old = (void *)host->timezone;
    host->timezone = strdupz((timezone && *timezone)?timezone:"unknown");
    freez(old);
}
