
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int first_t; int last_t; int usages; int flags; TYPE_1__* url; } ;
struct TYPE_3__ {char* url; } ;
typedef TYPE_2__ REGISTRY_MACHINE_URL ;
typedef int FILE ;


 int D_REGISTRY ;
 int debug (int ,char*,char*) ;
 int fprintf (int *,char*,int,int,int,int,char*) ;

__attribute__((used)) static int registry_machine_save_url(void *entry, void *file) {
    REGISTRY_MACHINE_URL *mu = entry;
    FILE *fp = file;

    debug(D_REGISTRY, "Registry: registry_machine_save_url('%s')", mu->url->url);

    int ret = fprintf(fp, "V\t%08x\t%08x\t%08x\t%02x\t%s\n",
            mu->first_t,
            mu->last_t,
            mu->usages,
            mu->flags,
            mu->url->url
    );



    return ret;
}
