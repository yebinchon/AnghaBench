
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * XMLRPC_VALUE ;


 int XMLRPC_AddValueToVector (int *,int *) ;
 int * XMLRPC_CreateVector (int *,int ) ;
 int XMLRPC_VectorAppendInt (int *,int ,int) ;
 int XMLRPC_VectorAppendString (int *,int ,char const*,int ) ;
 int xi_token_default ;
 int xi_token_description ;
 int xi_token_name ;
 int xi_token_optional ;
 int xi_token_type ;
 int xmlrpc_vector_struct ;

__attribute__((used)) static XMLRPC_VALUE describeValue_worker(const char* type, const char* id, const char* desc, int optional, const char* default_val, XMLRPC_VALUE sub_params) {
   XMLRPC_VALUE xParam = ((void*)0);
   if(id || desc) {
      xParam = XMLRPC_CreateVector(((void*)0), xmlrpc_vector_struct);
      XMLRPC_VectorAppendString(xParam, xi_token_name, id, 0);
      XMLRPC_VectorAppendString(xParam, xi_token_type, type, 0);
      XMLRPC_VectorAppendString(xParam, xi_token_description, desc, 0);
      if(optional != 2) {
         XMLRPC_VectorAppendInt(xParam, xi_token_optional, optional);
      }
      if(optional == 1 && default_val) {
         XMLRPC_VectorAppendString(xParam, xi_token_default, default_val, 0);
      }
      XMLRPC_AddValueToVector(xParam, sub_params);
   }
   return xParam;
}
