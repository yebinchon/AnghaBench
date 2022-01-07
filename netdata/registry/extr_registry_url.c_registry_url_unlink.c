
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int urls_memory; } ;
struct TYPE_7__ {char* url; int links; scalar_t__ len; } ;
typedef TYPE_1__ REGISTRY_URL ;


 int D_REGISTRY ;
 int debug (int ,char*,char*,...) ;
 int error (char*,char*,...) ;
 int freez (TYPE_1__*) ;
 TYPE_5__ registry ;
 TYPE_1__* registry_url_index_del (TYPE_1__*) ;

void registry_url_unlink(REGISTRY_URL *u) {
    u->links--;
    if(!u->links) {
        debug(D_REGISTRY, "Registry: registry_url_unlink('%s'): No more links for this URL", u->url);
        REGISTRY_URL *n = registry_url_index_del(u);
        if(!n) {
            error("INTERNAL ERROR: registry_url_unlink('%s'): cannot find url in index", u->url);
        }
        else {
            if(n != u) {
                error("INTERNAL ERROR: registry_url_unlink('%s'): deleted different url '%s'", u->url, n->url);
            }

            registry.urls_memory -= sizeof(REGISTRY_URL) + n->len;
            freez(n);
        }
    }
    else
        debug(D_REGISTRY, "Registry: registry_url_unlink('%s'): URL has %u links left", u->url, u->links);
}
