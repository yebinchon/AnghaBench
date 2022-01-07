
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* name; void* classname; } ;
typedef TYPE_1__ RBinSymbol ;


 void* strdup (char*) ;

__attribute__((used)) static void copy_sym_name_with_namespace(char *class_name, char *read_name, RBinSymbol *sym) {
 if (!class_name) {
  class_name = "";
 }
 sym->classname = strdup (class_name);
 sym->name = strdup (read_name);
}
