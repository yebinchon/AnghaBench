
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ q_iter ;
struct TYPE_6__ {int b_called; int (* method ) (TYPE_2__*,void*) ;} ;
typedef TYPE_1__ doc_method ;
typedef TYPE_2__* XMLRPC_SERVER ;
struct TYPE_7__ {int docslist; } ;


 TYPE_1__* Q_Iter_Get_F (scalar_t__) ;
 scalar_t__ Q_Iter_Head_F (int *) ;
 scalar_t__ Q_Iter_Next_F (scalar_t__) ;
 int stub1 (TYPE_2__*,void*) ;

__attribute__((used)) static void check_docs_loaded(XMLRPC_SERVER server, void* userData) {
   if(server) {
      q_iter qi = Q_Iter_Head_F(&server->docslist);
      while( qi ) {
         doc_method* dm = Q_Iter_Get_F(qi);
         if(dm && !dm->b_called) {
            dm->method(server, userData);
            dm->b_called = 1;
         }
         qi = Q_Iter_Next_F(qi);
      }
   }
}
