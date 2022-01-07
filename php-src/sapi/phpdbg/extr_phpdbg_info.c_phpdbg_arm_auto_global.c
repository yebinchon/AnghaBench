
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int name; scalar_t__ (* auto_global_callback ) (int ) ;scalar_t__ armed; } ;
typedef TYPE_1__ zend_auto_global ;


 int PHPDBG_G (int ) ;
 int PHPDBG_IN_SIGNAL_HANDLER ;
 scalar_t__ ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int flags ;
 int phpdbg_notice (char*,char*,char*,int,int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int phpdbg_arm_auto_global(zval *ptrzv) {
 zend_auto_global *auto_global = Z_PTR_P(ptrzv);

 if (auto_global->armed) {
  if (PHPDBG_G(flags) & PHPDBG_IN_SIGNAL_HANDLER) {
   phpdbg_notice("variableinfo", "unreachable=\"%.*s\"", "Cannot show information about superglobal variable %.*s", (int) ZSTR_LEN(auto_global->name), ZSTR_VAL(auto_global->name));
  } else {
   auto_global->armed = auto_global->auto_global_callback(auto_global->name);
  }
 }

 return 0;
}
