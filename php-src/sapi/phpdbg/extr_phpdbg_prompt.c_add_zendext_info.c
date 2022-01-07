
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ zend_extension ;


 int phpdbg_write (char*,char*,char*,int ) ;

__attribute__((used)) static int add_zendext_info(zend_extension *ext) {
 phpdbg_write("extension", "name=\"%s\"", "%s\n", ext->name);
 return 0;
}
