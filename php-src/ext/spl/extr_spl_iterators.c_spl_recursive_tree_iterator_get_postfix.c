
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {TYPE_1__* postfix; } ;
typedef TYPE_2__ spl_recursive_it_object ;
struct TYPE_4__ {int s; } ;


 int RETVAL_STR (int ) ;
 int Z_ADDREF_P (int *) ;

__attribute__((used)) static void spl_recursive_tree_iterator_get_postfix(spl_recursive_it_object *object, zval *return_value)
{
 RETVAL_STR(object->postfix[0].s);
 Z_ADDREF_P(return_value);
}
