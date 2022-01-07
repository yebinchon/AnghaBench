
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ os; } ;
typedef TYPE_1__ RRDHOST ;


 int freez (void*) ;
 int strcmp (scalar_t__,char const*) ;
 scalar_t__ strdupz (char const*) ;

__attribute__((used)) static inline void rrdhost_init_os(RRDHOST *host, const char *os) {
    if(host->os && os && !strcmp(host->os, os))
        return;

    void *old = (void *)host->os;
    host->os = strdupz(os?os:"unknown");
    freez(old);
}
