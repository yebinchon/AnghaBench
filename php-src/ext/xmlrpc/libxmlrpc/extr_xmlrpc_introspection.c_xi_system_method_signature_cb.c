
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * desc; } ;
typedef TYPE_1__ server_method ;
typedef int * XMLRPC_VALUE ;
typedef int XMLRPC_SERVER ;
typedef int XMLRPC_REQUEST ;


 int XMLRPC_AddValueToVector (int *,int *) ;
 int * XMLRPC_CreateValueString (int *,char const*,int ) ;
 int * XMLRPC_CreateVector (int *,int ) ;
 char* XMLRPC_GetValueString (int *) ;
 int * XMLRPC_RequestGetData (int ) ;
 char const* XMLRPC_VectorGetStringWithID (int *,int ) ;
 int * XMLRPC_VectorGetValueWithID (int *,int ) ;
 int * XMLRPC_VectorNext (int *) ;
 int * XMLRPC_VectorRewind (int *) ;
 int check_docs_loaded (int ,void*) ;
 TYPE_1__* find_method (int ,char const*) ;
 char const* type_to_str (int ,int ) ;
 int xi_token_params ;
 int xi_token_returns ;
 int xi_token_signatures ;
 int xi_token_type ;
 int xmlrpc_none ;
 int xmlrpc_vector_array ;

__attribute__((used)) static XMLRPC_VALUE xi_system_method_signature_cb(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   const char* method = XMLRPC_GetValueString(XMLRPC_VectorRewind(XMLRPC_RequestGetData(input)));
   XMLRPC_VALUE xResponse = ((void*)0);


   check_docs_loaded(server, userData);

   if(method) {
      server_method* sm = find_method(server, method);
      if(sm && sm->desc) {
         XMLRPC_VALUE xTypesArray = XMLRPC_CreateVector(((void*)0), xmlrpc_vector_array);
         XMLRPC_VALUE xIter, xParams, xSig, xSigIter;
         const char* type;


         xResponse = XMLRPC_CreateVector(((void*)0), xmlrpc_vector_array);


         xSig = XMLRPC_VectorGetValueWithID(sm->desc, xi_token_signatures);
         xSigIter = XMLRPC_VectorRewind( xSig );


         while(xSigIter) {

            type = XMLRPC_VectorGetStringWithID(XMLRPC_VectorRewind(
                                                 XMLRPC_VectorGetValueWithID(xSigIter, xi_token_returns)),
                                                xi_token_type);
            XMLRPC_AddValueToVector(xTypesArray,
                                    XMLRPC_CreateValueString(((void*)0),
                                                             type ? type : type_to_str(xmlrpc_none, 0),
                                    0));


            xParams = XMLRPC_VectorGetValueWithID(xSigIter, xi_token_params);
            xIter = XMLRPC_VectorRewind(xParams);


            while(xIter) {
               XMLRPC_AddValueToVector(xTypesArray,
                                       XMLRPC_CreateValueString(((void*)0),
                                                                XMLRPC_VectorGetStringWithID(xIter, xi_token_type),
                                                                0));
               xIter = XMLRPC_VectorNext(xParams);
            }


            XMLRPC_AddValueToVector(xResponse, xTypesArray);

            xSigIter = XMLRPC_VectorNext( xSig );
         }
      }
   }

   return xResponse;
}
