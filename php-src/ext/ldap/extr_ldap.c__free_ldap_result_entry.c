
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
struct TYPE_6__ {int res; int * ber; } ;
typedef TYPE_2__ ldap_resultentry ;


 int ber_free (int *,int ) ;
 int efree (TYPE_2__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void _free_ldap_result_entry(zend_resource *rsrc)
{
 ldap_resultentry *entry = (ldap_resultentry *)rsrc->ptr;

 if (entry->ber != ((void*)0)) {
  ber_free(entry->ber, 0);
  entry->ber = ((void*)0);
 }
 zval_ptr_dtor(&entry->res);
 efree(entry);
}
