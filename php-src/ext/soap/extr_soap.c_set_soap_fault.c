
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_OBJECT ;
 scalar_t__ IS_UNDEF ;
 int SOAP_1_1 ;
 char* SOAP_1_1_ENV_NAMESPACE ;
 int SOAP_1_2 ;
 char* SOAP_1_2_ENV_NAMESPACE ;
 int SOAP_GLOBAL (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int add_property_string (int *,char*,char*) ;
 int add_property_zval (int *,char*,int *) ;
 int object_init_ex (int *,int ) ;
 int soap_fault_class_entry ;
 int soap_version ;
 scalar_t__ strcmp (char*,char*) ;
 int zend_ce_exception ;
 int zend_update_property_string (int ,int *,char*,int,char*) ;

__attribute__((used)) static void set_soap_fault(zval *obj, char *fault_code_ns, char *fault_code, char *fault_string, char *fault_actor, zval *fault_detail, char *name)
{
 if (Z_TYPE_P(obj) != IS_OBJECT) {
  object_init_ex(obj, soap_fault_class_entry);
 }

 add_property_string(obj, "faultstring", fault_string ? fault_string : "");
 zend_update_property_string(zend_ce_exception, obj, "message", sizeof("message")-1, (fault_string ? fault_string : ""));

 if (fault_code != ((void*)0)) {
  int soap_version = SOAP_GLOBAL(soap_version);

  if (fault_code_ns) {
   add_property_string(obj, "faultcode", fault_code);
   add_property_string(obj, "faultcodens", fault_code_ns);
  } else {
   if (soap_version == SOAP_1_1) {
    add_property_string(obj, "faultcode", fault_code);
    if (strcmp(fault_code,"Client") == 0 ||
        strcmp(fault_code,"Server") == 0 ||
        strcmp(fault_code,"VersionMismatch") == 0 ||
        strcmp(fault_code,"MustUnderstand") == 0) {
     add_property_string(obj, "faultcodens", SOAP_1_1_ENV_NAMESPACE);
    }
   } else if (soap_version == SOAP_1_2) {
    if (strcmp(fault_code,"Client") == 0) {
     add_property_string(obj, "faultcode", "Sender");
     add_property_string(obj, "faultcodens", SOAP_1_2_ENV_NAMESPACE);
    } else if (strcmp(fault_code,"Server") == 0) {
     add_property_string(obj, "faultcode", "Receiver");
     add_property_string(obj, "faultcodens", SOAP_1_2_ENV_NAMESPACE);
    } else if (strcmp(fault_code,"VersionMismatch") == 0 ||
               strcmp(fault_code,"MustUnderstand") == 0 ||
               strcmp(fault_code,"DataEncodingUnknown") == 0) {
     add_property_string(obj, "faultcode", fault_code);
     add_property_string(obj, "faultcodens", SOAP_1_2_ENV_NAMESPACE);
    } else {
     add_property_string(obj, "faultcode", fault_code);
    }
   }
  }
 }
 if (fault_actor != ((void*)0)) {
  add_property_string(obj, "faultactor", fault_actor);
 }
 if (fault_detail != ((void*)0) && Z_TYPE_P(fault_detail) != IS_UNDEF) {
  add_property_zval(obj, "detail", fault_detail);
 }
 if (name != ((void*)0)) {
  add_property_string(obj, "_name", name);
 }
}
