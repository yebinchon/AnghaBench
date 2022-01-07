
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ zend_module_entry ;


 int phpdbg_write (char*,char*,char*,int ) ;

__attribute__((used)) static int add_module_info(zend_module_entry *module) {
 phpdbg_write("module", "name=\"%s\"", "%s\n", module->name);
 return 0;
}
