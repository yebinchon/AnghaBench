
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* guid; int first_t; int last_t; int usages; int person_urls; } ;
typedef TYPE_1__ REGISTRY_PERSON ;
typedef int FILE ;


 int D_REGISTRY ;
 int avl_traverse (int *,int ,int *) ;
 int debug (int ,char*,char*) ;
 int fprintf (int *,char*,int,int,int,char*) ;
 int registry_person_save_url ;

__attribute__((used)) static inline int registry_person_save(void *entry, void *file) {
    REGISTRY_PERSON *p = entry;
    FILE *fp = file;

    debug(D_REGISTRY, "Registry: registry_person_save('%s')", p->guid);

    int ret = fprintf(fp, "P\t%08x\t%08x\t%08x\t%s\n",
            p->first_t,
            p->last_t,
            p->usages,
            p->guid
    );

    if(ret >= 0) {

        int ret2 = avl_traverse(&p->person_urls, registry_person_save_url, fp);
        if (ret2 < 0) return ret2;
        ret += ret2;
    }



    return ret;
}
