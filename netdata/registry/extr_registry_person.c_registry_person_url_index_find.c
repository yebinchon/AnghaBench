
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int person_urls; int guid; } ;
struct TYPE_7__ {TYPE_1__* url; } ;
struct TYPE_6__ {int url; int hash; } ;
typedef TYPE_1__ REGISTRY_URL ;
typedef TYPE_2__ REGISTRY_PERSON_URL ;
typedef TYPE_3__ REGISTRY_PERSON ;


 int D_REGISTRY ;
 scalar_t__ avl_search (int *,void*) ;
 int debug (int ,char*,int ,char const*) ;
 int simple_hash (int ) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

inline REGISTRY_PERSON_URL *registry_person_url_index_find(REGISTRY_PERSON *p, const char *url) {
    debug(D_REGISTRY, "Registry: registry_person_url_index_find('%s', '%s')", p->guid, url);

    char buf[sizeof(REGISTRY_URL) + strlen(url)];

    REGISTRY_URL *u = (REGISTRY_URL *)&buf;
    strcpy(u->url, url);
    u->hash = simple_hash(u->url);

    REGISTRY_PERSON_URL tpu = { .url = u };

    REGISTRY_PERSON_URL *pu = (REGISTRY_PERSON_URL *)avl_search(&p->person_urls, (void *)&tpu);
    return pu;
}
