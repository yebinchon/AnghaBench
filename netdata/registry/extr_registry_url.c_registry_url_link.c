
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int links; int url; } ;
typedef TYPE_1__ REGISTRY_URL ;


 int D_REGISTRY ;
 int debug (int ,char*,int ,int ) ;

void registry_url_link(REGISTRY_URL *u) {
    u->links++;
    debug(D_REGISTRY, "Registry: registry_url_link('%s'): URL has now %u links", u->url, u->links);
}
