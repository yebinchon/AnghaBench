
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ce_flags; scalar_t__ (* interface_gets_implemented ) (TYPE_1__*,TYPE_1__*) ;int name; } ;
typedef TYPE_1__ zend_class_entry ;


 int E_CORE_ERROR ;
 scalar_t__ FAILURE ;
 int ZEND_ACC_INTERFACE ;
 int ZEND_ASSERT (int) ;
 int ZSTR_VAL (int ) ;
 scalar_t__ stub1 (TYPE_1__*,TYPE_1__*) ;
 int zend_error_noreturn (int ,char*,int ,int ) ;

__attribute__((used)) static inline void do_implement_interface(zend_class_entry *ce, zend_class_entry *iface)
{
 if (!(ce->ce_flags & ZEND_ACC_INTERFACE) && iface->interface_gets_implemented && iface->interface_gets_implemented(iface, ce) == FAILURE) {
  zend_error_noreturn(E_CORE_ERROR, "Class %s could not implement interface %s", ZSTR_VAL(ce->name), ZSTR_VAL(iface->name));
 }

 ZEND_ASSERT(ce != iface);
}
