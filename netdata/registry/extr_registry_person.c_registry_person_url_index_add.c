
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int avl ;
struct TYPE_9__ {int guid; int person_urls; } ;
struct TYPE_8__ {TYPE_1__* url; } ;
struct TYPE_7__ {char* url; } ;
typedef TYPE_2__ REGISTRY_PERSON_URL ;
typedef TYPE_3__ REGISTRY_PERSON ;


 int D_REGISTRY ;
 scalar_t__ avl_insert (int *,int *) ;
 int debug (int ,char*,int ,char*) ;
 int error (char*,int ,char*,char*) ;

inline REGISTRY_PERSON_URL *registry_person_url_index_add(REGISTRY_PERSON *p, REGISTRY_PERSON_URL *pu) {
    debug(D_REGISTRY, "Registry: registry_person_url_index_add('%s', '%s')", p->guid, pu->url->url);
    REGISTRY_PERSON_URL *tpu = (REGISTRY_PERSON_URL *)avl_insert(&(p->person_urls), (avl *)(pu));
    if(tpu != pu)
        error("Registry: registry_person_url_index_add('%s', '%s') already exists as '%s'", p->guid, pu->url->url, tpu->url->url);

    return tpu;
}
