
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct web_client {int dummy; } ;
struct TYPE_3__ {int guid; } ;
typedef TYPE_1__ REGISTRY_PERSON ;


 int registry_set_cookie (struct web_client*,int ) ;

__attribute__((used)) static inline void registry_set_person_cookie(struct web_client *w, REGISTRY_PERSON *p) {
    registry_set_cookie(w, p->guid);
}
