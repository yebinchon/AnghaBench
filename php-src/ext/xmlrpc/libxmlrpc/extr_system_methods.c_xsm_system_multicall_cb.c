
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XMLRPC_VALUE ;
typedef int XMLRPC_SERVER ;
typedef scalar_t__ XMLRPC_REQUEST ;


 int XMLRPC_AddValueToVector (scalar_t__,scalar_t__) ;
 scalar_t__ XMLRPC_CreateVector (int ,int ) ;
 int XMLRPC_RequestFree (scalar_t__,int) ;
 scalar_t__ XMLRPC_RequestGetData (scalar_t__) ;
 scalar_t__ XMLRPC_RequestNew () ;
 int XMLRPC_RequestSetData (scalar_t__,scalar_t__) ;
 int XMLRPC_RequestSetMethodName (scalar_t__,char const*) ;
 int XMLRPC_RequestSetRequestType (scalar_t__,int ) ;
 scalar_t__ XMLRPC_ServerCallMethod (int ,scalar_t__,void*) ;
 char* XMLRPC_VectorGetStringWithID (scalar_t__,char*) ;
 scalar_t__ XMLRPC_VectorGetValueWithID (scalar_t__,char*) ;
 scalar_t__ XMLRPC_VectorNext (scalar_t__) ;
 scalar_t__ XMLRPC_VectorRewind (scalar_t__) ;
 int xmlrpc_request_call ;
 int xmlrpc_vector_array ;

XMLRPC_VALUE xsm_system_multicall_cb(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xArray = XMLRPC_VectorRewind(XMLRPC_RequestGetData(input));
   XMLRPC_VALUE xReturn = XMLRPC_CreateVector(0, xmlrpc_vector_array);

   if (xArray) {
      XMLRPC_VALUE xMethodIter = XMLRPC_VectorRewind(xArray);

      while (xMethodIter) {
         XMLRPC_REQUEST request = XMLRPC_RequestNew();
         if(request) {
            const char* methodName = XMLRPC_VectorGetStringWithID(xMethodIter, "methodName");
            XMLRPC_VALUE params = XMLRPC_VectorGetValueWithID(xMethodIter, "params");

            if(methodName && params) {
               XMLRPC_VALUE xRandomArray = XMLRPC_CreateVector(0, xmlrpc_vector_array);
               XMLRPC_RequestSetMethodName(request, methodName);
               XMLRPC_RequestSetData(request, params);
               XMLRPC_RequestSetRequestType(request, xmlrpc_request_call);

               XMLRPC_AddValueToVector(xRandomArray,
                                       XMLRPC_ServerCallMethod(server, request, userData));

               XMLRPC_AddValueToVector(xReturn, xRandomArray);
            }
            XMLRPC_RequestFree(request, 1);
         }
         xMethodIter = XMLRPC_VectorNext(xArray);
      }
   }
   return xReturn;
}
