
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int avl ;
struct TYPE_9__ {size_t max_url_length; int urls_memory; int urls_count; int registry_urls_root_index; } ;
struct TYPE_8__ {char* url; void* hash; scalar_t__ links; void* len; } ;
typedef TYPE_1__ REGISTRY_URL ;


 int D_REGISTRY ;
 scalar_t__ avl_search (int *,int *) ;
 TYPE_1__* callocz (int,int) ;
 int debug (int ,char*,char const*,...) ;
 int error (char*,char*,char*) ;
 int freez (TYPE_1__*) ;
 TYPE_5__ registry ;
 TYPE_1__* registry_url_index_add (TYPE_1__*) ;
 void* simple_hash (char*) ;
 int strncpyz (char*,char const*,void*) ;

REGISTRY_URL *registry_url_get(const char *url, size_t urllen) {

    if(urllen > registry.max_url_length)
        urllen = registry.max_url_length;

    debug(D_REGISTRY, "Registry: registry_url_get('%s', %zu)", url, urllen);

    char buf[sizeof(REGISTRY_URL) + urllen];
    REGISTRY_URL *n = (REGISTRY_URL *)&buf[0];
    n->len = (uint16_t)urllen;
    strncpyz(n->url, url, n->len);
    n->hash = simple_hash(n->url);

    REGISTRY_URL *u = (REGISTRY_URL *)avl_search(&(registry.registry_urls_root_index), (avl *)n);
    if(!u) {
        debug(D_REGISTRY, "Registry: registry_url_get('%s', %zu): allocating %zu bytes", url, urllen, sizeof(REGISTRY_URL) + urllen);
        u = callocz(1, sizeof(REGISTRY_URL) + urllen);



        u->len = (uint16_t)urllen;
        strncpyz(u->url, url, u->len);
        u->links = 0;
        u->hash = simple_hash(u->url);

        registry.urls_memory += sizeof(REGISTRY_URL) + urllen;

        debug(D_REGISTRY, "Registry: registry_url_get('%s'): indexing it", url);
        n = registry_url_index_add(u);
        if(n != u) {
            error("INTERNAL ERROR: registry_url_get(): url '%s' already exists in the registry as '%s'", u->url, n->url);
            freez(u);
            u = n;
        }
        else
            registry.urls_count++;
    }

    return u;
}
