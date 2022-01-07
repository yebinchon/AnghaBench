
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int zend_is_auto_global (int *) ;
 int zend_string_free (int *) ;
 int * zend_string_init (char*,int,int ) ;

__attribute__((used)) static int phpdbg_is_auto_global(char *name, int len) {
 int ret;
 zend_string *str = zend_string_init(name, len, 0);
 ret = zend_is_auto_global(str);
 zend_string_free(str);
 return ret;
}
