
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
typedef int php_istream ;


 int istream_destructor (int *) ;

__attribute__((used)) static void istream_dtor(zend_resource *rsrc)
{
 php_istream *stm = (php_istream *)rsrc->ptr;
 istream_destructor(stm);
}
