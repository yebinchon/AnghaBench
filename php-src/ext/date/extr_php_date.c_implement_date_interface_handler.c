
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ zend_class_entry ;


 int E_ERROR ;
 int SUCCESS ;
 scalar_t__ ZEND_USER_CLASS ;
 int date_ce_date ;
 int date_ce_immutable ;
 int instanceof_function (TYPE_1__*,int ) ;
 int zend_error (int ,char*) ;

__attribute__((used)) static int implement_date_interface_handler(zend_class_entry *interface, zend_class_entry *implementor)
{
 if (implementor->type == ZEND_USER_CLASS &&
  !instanceof_function(implementor, date_ce_date) &&
  !instanceof_function(implementor, date_ce_immutable)
 ) {
  zend_error(E_ERROR, "DateTimeInterface can't be implemented by user classes");
 }

 return SUCCESS;
}
