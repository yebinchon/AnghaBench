
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
typedef int php_dispatchex ;


 int disp_destructor (int *) ;

__attribute__((used)) static void dispatch_dtor(zend_resource *rsrc)
{
 php_dispatchex *disp = (php_dispatchex *)rsrc->ptr;
 disp_destructor(disp);
}
