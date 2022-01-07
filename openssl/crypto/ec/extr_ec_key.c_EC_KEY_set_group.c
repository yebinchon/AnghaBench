
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * group; TYPE_1__* meth; } ;
struct TYPE_5__ {scalar_t__ (* set_group ) (TYPE_2__*,int const*) ;} ;
typedef TYPE_2__ EC_KEY ;
typedef int EC_GROUP ;


 int * EC_GROUP_dup (int const*) ;
 int EC_GROUP_free (int *) ;
 scalar_t__ stub1 (TYPE_2__*,int const*) ;

int EC_KEY_set_group(EC_KEY *key, const EC_GROUP *group)
{
    if (key->meth->set_group != ((void*)0) && key->meth->set_group(key, group) == 0)
        return 0;
    EC_GROUP_free(key->group);
    key->group = EC_GROUP_dup(group);
    return (key->group == ((void*)0)) ? 0 : 1;
}
