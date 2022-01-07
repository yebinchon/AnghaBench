
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zend_is_auto_global_str (char*,int) ;

int phpdbg_is_auto_global(char *name, int len) {
 return zend_is_auto_global_str(name, len);
}
