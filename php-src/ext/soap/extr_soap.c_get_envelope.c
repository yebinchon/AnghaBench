
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* next; } ;
typedef void* SOAP_GLOBAL ;


 void* SOAP_1_1 ;
 char* SOAP_1_1_ENV_NAMESPACE ;
 void* SOAP_1_2 ;
 char* SOAP_1_2_ENV_NAMESPACE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ node_is_equal_ex (TYPE_1__*,char*,char*) ;
 int soap_server_fault (char*,char*,int *,int *,int *) ;

__attribute__((used)) static xmlNodePtr get_envelope(xmlNodePtr trav, int *version, char **envelope_ns) {
 while (trav != ((void*)0)) {
  if (trav->type == XML_ELEMENT_NODE) {
   if (node_is_equal_ex(trav,"Envelope",SOAP_1_1_ENV_NAMESPACE)) {
    *version = SOAP_1_1;
    *envelope_ns = SOAP_1_1_ENV_NAMESPACE;
    SOAP_GLOBAL(soap_version) = SOAP_1_1;
    return trav;
   }

   if (node_is_equal_ex(trav,"Envelope",SOAP_1_2_ENV_NAMESPACE)) {
    *version = SOAP_1_2;
    *envelope_ns = SOAP_1_2_ENV_NAMESPACE;
    SOAP_GLOBAL(soap_version) = SOAP_1_2;
    return trav;
   }

   soap_server_fault("VersionMismatch", "Wrong Version", ((void*)0), ((void*)0), ((void*)0));
  }
  trav = trav->next;
 }

 return ((void*)0);
}
