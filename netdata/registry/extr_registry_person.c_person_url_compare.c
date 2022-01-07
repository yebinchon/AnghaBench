
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {TYPE_1__* url; } ;
struct TYPE_3__ {scalar_t__ hash; int url; } ;
typedef TYPE_2__ REGISTRY_PERSON_URL ;


 int strcmp (int ,int ) ;

int person_url_compare(void *a, void *b) {
    register uint32_t hash1 = ((REGISTRY_PERSON_URL *)a)->url->hash;
    register uint32_t hash2 = ((REGISTRY_PERSON_URL *)b)->url->hash;

    if(hash1 < hash2) return -1;
    else if(hash1 > hash2) return 1;
    else return strcmp(((REGISTRY_PERSON_URL *)a)->url->url, ((REGISTRY_PERSON_URL *)b)->url->url);
}
