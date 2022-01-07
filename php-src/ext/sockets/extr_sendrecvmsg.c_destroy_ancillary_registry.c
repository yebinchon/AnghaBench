
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ initialized; int ht; } ;


 TYPE_1__ ancillary_registry ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void destroy_ancillary_registry(void)
{
 if (ancillary_registry.initialized) {
  zend_hash_destroy(&ancillary_registry.ht);
  ancillary_registry.initialized = 0;
 }
}
