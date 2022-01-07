
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZVAL_NULL (int *) ;
 int Z_DELREF_P (int *) ;
 int add_property_zval (int *,char*,int *) ;
 int set_soap_fault (int *,int *,char*,char*,char*,int *,int *) ;

__attribute__((used)) static void add_soap_fault_ex(zval *fault, zval *obj, char *fault_code, char *fault_string, char *fault_actor, zval *fault_detail)
{
 ZVAL_NULL(fault);
 set_soap_fault(fault, ((void*)0), fault_code, fault_string, fault_actor, fault_detail, ((void*)0));
 add_property_zval(obj, "__soap_fault", fault);
 Z_DELREF_P(fault);
}
