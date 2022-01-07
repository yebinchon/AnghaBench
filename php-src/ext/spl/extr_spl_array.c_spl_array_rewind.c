
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ ht_iter; } ;
typedef TYPE_1__ spl_array_object ;
typedef int HashTable ;


 int * spl_array_get_hash_table (TYPE_1__*) ;
 int spl_array_get_pos_ptr (int *,TYPE_1__*) ;
 int spl_array_skip_protected (TYPE_1__*,int *) ;
 int zend_hash_internal_pointer_reset_ex (int *,int ) ;

__attribute__((used)) static void spl_array_rewind(spl_array_object *intern)
{
 HashTable *aht = spl_array_get_hash_table(intern);

 if (intern->ht_iter == (uint32_t)-1) {
  spl_array_get_pos_ptr(aht, intern);
 } else {
  zend_hash_internal_pointer_reset_ex(aht, spl_array_get_pos_ptr(aht, intern));
  spl_array_skip_protected(intern, aht);
 }
}
