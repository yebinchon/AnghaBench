
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ zend_extension ;


 int php_printf (char*,int ) ;

__attribute__((used)) static int print_extension_info(zend_extension *ext, void *arg)
{
 php_printf("%s\n", ext->name);
 return 0;
}
