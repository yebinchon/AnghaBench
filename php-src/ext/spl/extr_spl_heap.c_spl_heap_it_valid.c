
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_2__ zend_object_iterator ;
struct TYPE_7__ {TYPE_1__* heap; } ;
struct TYPE_5__ {scalar_t__ count; } ;


 int FAILURE ;
 int SUCCESS ;
 TYPE_4__* Z_SPLHEAP_P (int *) ;

__attribute__((used)) static int spl_heap_it_valid(zend_object_iterator *iter)
{
 return ((Z_SPLHEAP_P(&iter->data))->heap->count != 0 ? SUCCESS : FAILURE);
}
