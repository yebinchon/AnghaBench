
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ armed; int name; } ;
typedef TYPE_1__ zend_auto_global ;


 int ZEND_HASH_APPLY_KEEP ;
 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static int phpdbg_dearm_autoglobals(zend_auto_global *auto_global) {
 if (ZSTR_LEN(auto_global->name) != sizeof("GLOBALS") - 1 || memcmp(ZSTR_VAL(auto_global->name), "GLOBALS", sizeof("GLOBALS") - 1)) {
  auto_global->armed = 0;
 }

 return ZEND_HASH_APPLY_KEEP;
}
