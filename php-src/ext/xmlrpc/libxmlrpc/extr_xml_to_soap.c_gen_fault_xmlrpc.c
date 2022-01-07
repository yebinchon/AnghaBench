
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_element ;
typedef int XMLRPC_VALUE ;


 int TOKEN_SOAP_FAULTCODE ;
 int TOKEN_SOAP_FAULTSTRING ;
 int TOKEN_XMLRPC_FAULTCODE ;
 int TOKEN_XMLRPC_FAULTSTRING ;
 int XMLRPC_DupValueNew (int ) ;
 int XMLRPC_GetValueInt (int ) ;
 int XMLRPC_SetValueID (int ,int ,int ) ;
 int XMLRPC_SetValueString (int ,char*,int ) ;
 int XMLRPC_VectorGetValueWithID (int ,int ) ;

__attribute__((used)) static XMLRPC_VALUE gen_fault_xmlrpc(XMLRPC_VALUE node, xml_element* el_target) {
 XMLRPC_VALUE xDup = XMLRPC_DupValueNew(node);
 XMLRPC_VALUE xCode = XMLRPC_VectorGetValueWithID(xDup, TOKEN_XMLRPC_FAULTCODE);
 XMLRPC_VALUE xStr = XMLRPC_VectorGetValueWithID(xDup, TOKEN_XMLRPC_FAULTSTRING);

 XMLRPC_SetValueID(xCode, TOKEN_SOAP_FAULTCODE, 0);
 XMLRPC_SetValueID(xStr, TOKEN_SOAP_FAULTSTRING, 0);


 switch (XMLRPC_GetValueInt(xCode)) {
 case -32700:
 case -32701:
 case -32702:
 case -32600:
 case -32601:
 case -32602:
  XMLRPC_SetValueString(xCode, "SOAP-ENV:Client", 0);
  break;
 case -32603:
 case -32500:
 case -32400:
 case -32300:
  XMLRPC_SetValueString(xCode, "SOAP-ENV:Server", 0);
  break;
 }
 return xDup;
}
