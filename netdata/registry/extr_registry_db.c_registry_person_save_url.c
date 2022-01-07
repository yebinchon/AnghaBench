
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int first_t; int last_t; int usages; int flags; char* machine_name; TYPE_2__* url; TYPE_1__* machine; } ;
struct TYPE_5__ {char* url; } ;
struct TYPE_4__ {char* guid; } ;
typedef TYPE_3__ REGISTRY_PERSON_URL ;
typedef int FILE ;


 int D_REGISTRY ;
 int debug (int ,char*,char*) ;
 int fprintf (int *,char*,int,int,int,int,char*,char*,char*) ;

__attribute__((used)) static inline int registry_person_save_url(void *entry, void *file) {
    REGISTRY_PERSON_URL *pu = entry;
    FILE *fp = file;

    debug(D_REGISTRY, "Registry: registry_person_save_url('%s')", pu->url->url);

    int ret = fprintf(fp, "U\t%08x\t%08x\t%08x\t%02x\t%s\t%s\t%s\n",
            pu->first_t,
            pu->last_t,
            pu->usages,
            pu->flags,
            pu->machine->guid,
            pu->machine_name,
            pu->url->url
    );



    return ret;
}
