
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int uint32_t ;


 int zend_printf (char*,char*) ;

zend_bool php_std_auto_global_callback(char *name, uint32_t name_len)
{
 zend_printf("%s\n", name);
 return 0;
}
