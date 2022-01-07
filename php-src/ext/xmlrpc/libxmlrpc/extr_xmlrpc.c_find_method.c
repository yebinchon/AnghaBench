
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ server_method ;
typedef scalar_t__ q_iter ;
typedef TYPE_2__* XMLRPC_SERVER ;
struct TYPE_7__ {int methodlist; } ;


 TYPE_1__* Q_Iter_Get_F (scalar_t__) ;
 scalar_t__ Q_Iter_Head_F (int *) ;
 scalar_t__ Q_Iter_Next_F (scalar_t__) ;
 int strcmp (int ,char const*) ;

server_method* find_method(XMLRPC_SERVER server, const char* name) {
   server_method* sm;

   q_iter qi = Q_Iter_Head_F(&server->methodlist);

   while( qi ) {
      sm = Q_Iter_Get_F(qi);
      if(sm && !strcmp(sm->name, name)) {
         return sm;
      }
      qi = Q_Iter_Next_F(qi);
   }
   return ((void*)0);
}
