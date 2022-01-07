
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {TYPE_2__* funcs; int data; } ;
typedef TYPE_3__ zend_object_iterator ;
struct TYPE_11__ {size_t level; TYPE_1__* iterators; } ;
typedef TYPE_4__ spl_recursive_it_object ;
struct TYPE_9__ {int * (* get_current_data ) (TYPE_3__*) ;} ;
struct TYPE_8__ {TYPE_3__* iterator; } ;


 TYPE_4__* Z_SPLRECURSIVE_IT_P (int *) ;
 int * stub1 (TYPE_3__*) ;

__attribute__((used)) static zval *spl_recursive_it_get_current_data(zend_object_iterator *iter)
{
 spl_recursive_it_object *object = Z_SPLRECURSIVE_IT_P(&iter->data);
 zend_object_iterator *sub_iter = object->iterators[object->level].iterator;

 return sub_iter->funcs->get_current_data(sub_iter);
}
