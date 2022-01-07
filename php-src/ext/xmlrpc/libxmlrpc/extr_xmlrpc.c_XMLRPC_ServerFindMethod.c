
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * method; int name; } ;
typedef TYPE_1__ server_method ;
typedef scalar_t__ q_iter ;
typedef TYPE_2__* XMLRPC_SERVER ;
typedef int * XMLRPC_Callback ;
struct TYPE_6__ {int methodlist; } ;


 TYPE_1__* Q_Iter_Get_F (scalar_t__) ;
 scalar_t__ Q_Iter_Head_F (int *) ;
 scalar_t__ Q_Iter_Next_F (scalar_t__) ;
 int strcmp (int ,char const*) ;

XMLRPC_Callback XMLRPC_ServerFindMethod(XMLRPC_SERVER server, const char* callName) {
   if(server && callName) {
      q_iter qi = Q_Iter_Head_F(&server->methodlist);
      while( qi ) {
         server_method* sm = Q_Iter_Get_F(qi);
         if(sm && !strcmp(sm->name, callName)) {
            return sm->method;
         }
         qi = Q_Iter_Next_F(qi);
      }
   }
   return ((void*)0);
}
