
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* hostname; int hash_hostname; } ;
typedef TYPE_1__ RRDHOST ;


 int freez (void*) ;
 int simple_hash (void*) ;
 int strcmp (void*,char const*) ;
 void* strdupz (char const*) ;

__attribute__((used)) static inline void rrdhost_init_hostname(RRDHOST *host, const char *hostname) {
    if(host->hostname && hostname && !strcmp(host->hostname, hostname))
        return;

    void *old = host->hostname;
    host->hostname = strdupz(hostname?hostname:"localhost");
    host->hash_hostname = simple_hash(host->hostname);
    freez(old);
}
