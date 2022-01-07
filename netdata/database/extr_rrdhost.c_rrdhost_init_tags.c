
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tags; } ;
typedef TYPE_1__ RRDHOST ;


 int freez (void*) ;
 int strcmp (int *,char const*) ;
 int * strdupz (char const*) ;

__attribute__((used)) static inline void rrdhost_init_tags(RRDHOST *host, const char *tags) {
    if(host->tags && tags && !strcmp(host->tags, tags))
        return;

    void *old = (void *)host->tags;
    host->tags = (tags && *tags)?strdupz(tags):((void*)0);
    freez(old);
}
