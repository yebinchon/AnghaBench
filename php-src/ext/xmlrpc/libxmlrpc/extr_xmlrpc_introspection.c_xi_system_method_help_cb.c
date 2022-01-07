
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ desc; } ;
typedef TYPE_1__ server_method ;
typedef int * XMLRPC_VALUE ;
typedef int XMLRPC_SERVER ;
typedef int XMLRPC_REQUEST ;


 int * XMLRPC_CreateValueString (int *,char const*,int ) ;
 char* XMLRPC_GetValueString (int ) ;
 int XMLRPC_RequestGetData (int ) ;
 char* XMLRPC_VectorGetStringWithID (scalar_t__,int ) ;
 int XMLRPC_VectorRewind (int ) ;
 int check_docs_loaded (int ,void*) ;
 TYPE_1__* find_method (int ,char const*) ;
 char const* xi_token_empty ;
 int xi_token_purpose ;

__attribute__((used)) static XMLRPC_VALUE xi_system_method_help_cb(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   const char* method = XMLRPC_GetValueString(XMLRPC_VectorRewind(XMLRPC_RequestGetData(input)));
   XMLRPC_VALUE xResponse = ((void*)0);


   check_docs_loaded(server, userData);

   if(method) {
      server_method* sm = find_method(server, method);
      if(sm && sm->desc) {
         const char* help = XMLRPC_VectorGetStringWithID(sm->desc, xi_token_purpose);


         xResponse = XMLRPC_CreateValueString(((void*)0), help ? help : xi_token_empty, 0);
      }
   }

   return xResponse;
}
