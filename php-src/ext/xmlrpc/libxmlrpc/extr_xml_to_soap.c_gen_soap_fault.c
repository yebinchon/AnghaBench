
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE ;


 int TOKEN_FAULT ;
 int TOKEN_SOAP_FAULTACTOR ;
 int TOKEN_SOAP_FAULTCODE ;
 int TOKEN_SOAP_FAULTDETAILS ;
 int TOKEN_SOAP_FAULTSTRING ;
 int XMLRPC_AddValuesToVector (int ,int ,int ,int ,int ,int *) ;
 int XMLRPC_CreateValueString (int ,char const*,int ) ;
 int XMLRPC_CreateVector (int ,int ) ;
 int xmlrpc_vector_struct ;

__attribute__((used)) static XMLRPC_VALUE gen_soap_fault(const char* fault_code, const char* fault_string,
             const char* actor, const char* details) {
 XMLRPC_VALUE xReturn = XMLRPC_CreateVector(TOKEN_FAULT, xmlrpc_vector_struct);
 XMLRPC_AddValuesToVector(xReturn,
          XMLRPC_CreateValueString(TOKEN_SOAP_FAULTCODE, fault_code, 0),
          XMLRPC_CreateValueString(TOKEN_SOAP_FAULTSTRING, fault_string, 0),
          XMLRPC_CreateValueString(TOKEN_SOAP_FAULTACTOR, actor, 0),
          XMLRPC_CreateValueString(TOKEN_SOAP_FAULTDETAILS, details, 0),
          ((void*)0));
 return xReturn;
}
