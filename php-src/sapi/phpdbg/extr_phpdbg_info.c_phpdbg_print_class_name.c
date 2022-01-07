
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ce_flags; int function_table; int name; int type; } ;
typedef TYPE_1__ zend_class_entry ;


 int ZEND_ACC_ABSTRACT ;
 int ZEND_ACC_INTERFACE ;
 int ZEND_USER_CLASS ;
 scalar_t__ ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int phpdbg_writeln (char*,char*,char*,char const*,char const*,int,int ,int ) ;
 int zend_hash_num_elements (int *) ;

__attribute__((used)) static inline void phpdbg_print_class_name(zend_class_entry *ce)
{
 const char *visibility = ce->type == ZEND_USER_CLASS ? "User" : "Internal";
 const char *type = (ce->ce_flags & ZEND_ACC_INTERFACE) ? "Interface" : (ce->ce_flags & ZEND_ACC_ABSTRACT) ? "Abstract Class" : "Class";

 phpdbg_writeln("class", "type=\"%s\" flags=\"%s\" name=\"%.*s\" methodcount=\"%d\"", "%s %s %.*s (%d)", visibility, type, (int) ZSTR_LEN(ce->name), ZSTR_VAL(ce->name), zend_hash_num_elements(&ce->function_table));
}
