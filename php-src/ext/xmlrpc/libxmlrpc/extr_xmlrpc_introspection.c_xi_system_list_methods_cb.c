
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ server_method ;
typedef scalar_t__ q_iter ;
typedef int XMLRPC_VALUE ;
typedef TYPE_2__* XMLRPC_SERVER ;
typedef int XMLRPC_REQUEST ;
struct TYPE_6__ {int methodlist; } ;


 TYPE_1__* Q_Iter_Get_F (scalar_t__) ;
 scalar_t__ Q_Iter_Head_F (int *) ;
 scalar_t__ Q_Iter_Next_F (scalar_t__) ;
 int XMLRPC_CreateVector (int *,int ) ;
 int XMLRPC_VectorAppendString (int ,int ,int ,int ) ;
 int xmlrpc_vector_array ;

__attribute__((used)) static XMLRPC_VALUE xi_system_list_methods_cb(XMLRPC_SERVER server, XMLRPC_REQUEST input, void* userData) {
   XMLRPC_VALUE xResponse = XMLRPC_CreateVector(((void*)0), xmlrpc_vector_array);

   q_iter qi = Q_Iter_Head_F(&server->methodlist);
   while( qi ) {
      server_method* sm = Q_Iter_Get_F(qi);
      if(sm) {
         XMLRPC_VectorAppendString(xResponse, 0, sm->name, 0);
      }
      qi = Q_Iter_Next_F(qi);
   }
   return xResponse;
}
