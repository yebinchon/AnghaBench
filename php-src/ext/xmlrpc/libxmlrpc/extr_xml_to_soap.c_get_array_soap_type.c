
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VALUE_TYPE_EASY ;
typedef scalar_t__ XMLRPC_VALUE ;


 char* TOKEN_ANY ;
 char* TOKEN_ARRAY ;
 char* TOKEN_BASE64 ;
 char* TOKEN_BOOLEAN ;
 char* TOKEN_DATETIME ;
 char* TOKEN_DOUBLE ;
 char* TOKEN_INT ;
 char* TOKEN_NULL ;
 char* TOKEN_STRING ;
 char* TOKEN_STRUCT ;
 int XMLRPC_GetValueTypeEasy (scalar_t__) ;
 scalar_t__ XMLRPC_VectorNext (scalar_t__) ;
 scalar_t__ XMLRPC_VectorRewind (scalar_t__) ;
__attribute__((used)) static const char* get_array_soap_type(XMLRPC_VALUE node) {
 XMLRPC_VALUE_TYPE_EASY type = 130;

 XMLRPC_VALUE xIter = XMLRPC_VectorRewind(node);
 int loopCount = 0;
 const char* soapType = TOKEN_ANY;

 type = XMLRPC_GetValueTypeEasy(xIter);
 xIter = XMLRPC_VectorNext(node);

 while (xIter) {




  if ( (XMLRPC_GetValueTypeEasy(xIter) != type) || loopCount >= 50) {
   type = 130;
   break;
  }
  loopCount ++;

  xIter = XMLRPC_VectorNext(node);
 }
 switch (type) {
 case 130:
  soapType = TOKEN_ANY;
  break;
 case 133:
  soapType = TOKEN_NULL;
  break;
 case 132:
  soapType = TOKEN_INT;
  break;
 case 134:
  soapType = TOKEN_DOUBLE;
  break;
 case 136:
  soapType = TOKEN_BOOLEAN;
  break;
 case 129:
  soapType = TOKEN_STRING;
  break;
 case 137:
  soapType = TOKEN_BASE64;
  break;
 case 135:
  soapType = TOKEN_DATETIME;
  break;
 case 128:
  soapType = TOKEN_STRUCT;
  break;
 case 138:
  soapType = TOKEN_ARRAY;
  break;
 case 131:
  soapType = TOKEN_STRUCT;
  break;
 }
 return soapType;
}
