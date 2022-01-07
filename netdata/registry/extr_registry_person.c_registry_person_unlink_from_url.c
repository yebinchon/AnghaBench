
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REGISTRY_PERSON_URL ;
typedef int REGISTRY_PERSON ;


 int registry_person_url_free (int *,int *) ;

void registry_person_unlink_from_url(REGISTRY_PERSON *p, REGISTRY_PERSON_URL *pu) {
    registry_person_url_free(p, pu);
}
