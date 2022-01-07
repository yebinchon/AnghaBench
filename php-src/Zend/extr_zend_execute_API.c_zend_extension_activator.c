
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* activate ) () ;} ;
typedef TYPE_1__ zend_extension ;


 int stub1 () ;

__attribute__((used)) static void zend_extension_activator(zend_extension *extension)
{
 if (extension->activate) {
  extension->activate();
 }
}
