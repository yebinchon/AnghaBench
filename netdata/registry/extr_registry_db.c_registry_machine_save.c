
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* guid; int first_t; int last_t; int usages; int machine_urls; } ;
typedef TYPE_1__ REGISTRY_MACHINE ;
typedef int FILE ;


 int D_REGISTRY ;
 int debug (int ,char*,char*) ;
 int dictionary_get_all (int ,int ,int *) ;
 int fprintf (int *,char*,int,int,int,char*) ;
 int registry_machine_save_url ;

__attribute__((used)) static int registry_machine_save(void *entry, void *file) {
    REGISTRY_MACHINE *m = entry;
    FILE *fp = file;

    debug(D_REGISTRY, "Registry: registry_machine_save('%s')", m->guid);

    int ret = fprintf(fp, "M\t%08x\t%08x\t%08x\t%s\n",
            m->first_t,
            m->last_t,
            m->usages,
            m->guid
    );

    if(ret >= 0) {
        int ret2 = dictionary_get_all(m->machine_urls, registry_machine_save_url, fp);
        if(ret2 < 0) return ret2;
        ret += ret2;
    }



    return ret;
}
