
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {int key; } ;
typedef TYPE_1__ zend_ffi_cdata_iterator ;



__attribute__((used)) static void zend_ffi_cdata_it_move_forward(zend_object_iterator *it)
{
 zend_ffi_cdata_iterator *iter = (zend_ffi_cdata_iterator*)it;
 iter->key++;
}
