
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_6__ {struct TYPE_6__* indices; int proxy_obj; } ;
typedef TYPE_2__ php_com_saproxy_iter ;


 scalar_t__ Z_PTR (int ) ;
 int efree (TYPE_2__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void saproxy_iter_dtor(zend_object_iterator *iter)
{
 php_com_saproxy_iter *I = (php_com_saproxy_iter*)Z_PTR(iter->data);

 zval_ptr_dtor(&I->proxy_obj);

 efree(I->indices);
 efree(I);
}
