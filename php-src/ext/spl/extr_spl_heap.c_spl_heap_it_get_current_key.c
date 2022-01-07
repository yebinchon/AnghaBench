
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_7__ {int data; } ;
typedef TYPE_2__ zend_object_iterator ;
struct TYPE_8__ {TYPE_1__* heap; } ;
typedef TYPE_3__ spl_heap_object ;
struct TYPE_6__ {scalar_t__ count; } ;


 int ZVAL_LONG (int *,scalar_t__) ;
 TYPE_3__* Z_SPLHEAP_P (int *) ;

__attribute__((used)) static void spl_heap_it_get_current_key(zend_object_iterator *iter, zval *key)
{
 spl_heap_object *object = Z_SPLHEAP_P(&iter->data);

 ZVAL_LONG(key, object->heap->count - 1);
}
