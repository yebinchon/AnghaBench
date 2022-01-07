
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct TYPE_5__ {scalar_t__ key; scalar_t__ imax; } ;
typedef TYPE_2__ php_com_saproxy_iter ;


 int FAILURE ;
 int SUCCESS ;
 scalar_t__ Z_PTR (int ) ;

__attribute__((used)) static int saproxy_iter_valid(zend_object_iterator *iter)
{
 php_com_saproxy_iter *I = (php_com_saproxy_iter*)Z_PTR(iter->data);

 return (I->key < I->imax) ? SUCCESS : FAILURE;
}
