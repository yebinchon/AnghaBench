
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_context {int groups; int users; scalar_t__ ldap; } ;


 int cache_cleanup (int *) ;
 int free (struct idmap_context*) ;
 int ldap_unbind (scalar_t__) ;

void nfs41_idmap_free(
    struct idmap_context *context)
{

    if (context->ldap)
        ldap_unbind(context->ldap);

    cache_cleanup(&context->users);
    cache_cleanup(&context->groups);
    free(context);
}
