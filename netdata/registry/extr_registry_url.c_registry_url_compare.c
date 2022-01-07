
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash; int url; } ;
typedef TYPE_1__ REGISTRY_URL ;


 int strcmp (int ,int ) ;

int registry_url_compare(void *a, void *b) {
    if(((REGISTRY_URL *)a)->hash < ((REGISTRY_URL *)b)->hash) return -1;
    else if(((REGISTRY_URL *)a)->hash > ((REGISTRY_URL *)b)->hash) return 1;
    else return strcmp(((REGISTRY_URL *)a)->url, ((REGISTRY_URL *)b)->url);
}
