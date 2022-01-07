
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef int xmlNodePtr ;
typedef int smart_str ;
struct TYPE_3__ {scalar_t__ prefix; } ;


 scalar_t__ SOAP_1_1 ;
 char* SOAP_1_1_ENC_NAMESPACE ;
 scalar_t__ SOAP_1_2 ;
 char* SOAP_1_2_ENC_NAMESPACE ;
 scalar_t__ SOAP_GLOBAL (int ) ;
 TYPE_1__* encode_add_ns (int ,char const*) ;
 int smart_str_0 (int *) ;
 int smart_str_appendc (int *,char) ;
 int smart_str_appendl (int *,char const*,int ) ;
 int smart_str_appends (int *,char*) ;
 int soap_version ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void get_type_str(xmlNodePtr node, const char* ns, const char* type, smart_str* ret)
{

 if (ns) {
  xmlNsPtr xmlns;
  if (SOAP_GLOBAL(soap_version) == SOAP_1_2 &&
      strcmp(ns,SOAP_1_1_ENC_NAMESPACE) == 0) {
   ns = SOAP_1_2_ENC_NAMESPACE;
  } else if (SOAP_GLOBAL(soap_version) == SOAP_1_1 &&
             strcmp(ns,SOAP_1_2_ENC_NAMESPACE) == 0) {
   ns = SOAP_1_1_ENC_NAMESPACE;
  }
  xmlns = encode_add_ns(node, ns);
  smart_str_appends(ret, (char*)xmlns->prefix);
  smart_str_appendc(ret, ':');
 }
 smart_str_appendl(ret, type, strlen(type));
 smart_str_0(ret);
}
