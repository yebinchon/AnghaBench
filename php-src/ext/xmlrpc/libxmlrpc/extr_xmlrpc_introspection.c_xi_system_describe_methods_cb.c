
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * desc; } ;
typedef TYPE_1__ server_method ;
typedef scalar_t__ q_iter ;
typedef scalar_t__ XMLRPC_VALUE_TYPE ;
typedef int * XMLRPC_VALUE ;
typedef TYPE_2__* XMLRPC_SERVER ;
typedef int XMLRPC_REQUEST ;
struct TYPE_8__ {int methodlist; int xIntrospection; } ;


 TYPE_1__* Q_Iter_Get_F (scalar_t__) ;
 scalar_t__ Q_Iter_Head_F (int *) ;
 scalar_t__ Q_Iter_Next_F (scalar_t__) ;
 int XMLRPC_AddValueToVector (int *,int *) ;
 int * XMLRPC_CreateVector (char*,int ) ;
 int XMLRPC_GetValueString (int *) ;
 scalar_t__ XMLRPC_GetValueType (int *) ;
 int * XMLRPC_RequestGetData (int ) ;
 int * XMLRPC_VectorGetValueWithID (int ,char*) ;
 int * XMLRPC_VectorNext (int *) ;
 int * XMLRPC_VectorRewind (int *) ;
 int check_docs_loaded (TYPE_2__*,void*) ;
 int describe_method (TYPE_2__*,int *,int ) ;
 scalar_t__ xmlrpc_string ;
 scalar_t__ xmlrpc_vector ;
 int xmlrpc_vector_array ;
 int xmlrpc_vector_struct ;

__attribute__((used)) static XMLRPC_VALUE xi_system_describe_methods_cb(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xParams = XMLRPC_VectorRewind(XMLRPC_RequestGetData(input));
   XMLRPC_VALUE xResponse = XMLRPC_CreateVector(((void*)0), xmlrpc_vector_struct);
   XMLRPC_VALUE xMethodList = XMLRPC_CreateVector("methodList", xmlrpc_vector_array);
   XMLRPC_VALUE xTypeList = ((void*)0);
   int bAll = 1;


   check_docs_loaded(server, userData);

   xTypeList = XMLRPC_VectorGetValueWithID(server->xIntrospection, "typeList");

   XMLRPC_AddValueToVector(xResponse, xTypeList);
   XMLRPC_AddValueToVector(xResponse, xMethodList);


   if(xParams) {

      XMLRPC_VALUE_TYPE type = XMLRPC_GetValueType(xParams);
      if(type == xmlrpc_string) {

         describe_method(server, xMethodList, XMLRPC_GetValueString(xParams));
         bAll = 0;
      }
      else if(type == xmlrpc_vector) {

         XMLRPC_VALUE xIter = XMLRPC_VectorRewind(xParams);
         while(xIter) {
            describe_method(server, xMethodList, XMLRPC_GetValueString(xIter));
            xIter = XMLRPC_VectorNext(xParams);
         }
         bAll = 0;
      }
   }


   if(bAll) {
      q_iter qi = Q_Iter_Head_F(&server->methodlist);
      while( qi ) {
         server_method* sm = Q_Iter_Get_F(qi);
         if(sm) {
            XMLRPC_AddValueToVector(xMethodList, sm->desc);
         }
         qi = Q_Iter_Next_F(qi);
      }
   }

   return xResponse;
}
