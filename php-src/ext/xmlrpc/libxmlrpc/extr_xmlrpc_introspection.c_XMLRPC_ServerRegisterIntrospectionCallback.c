
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ b_called; scalar_t__ method; } ;
typedef TYPE_1__ doc_method ;
typedef TYPE_2__* XMLRPC_SERVER ;
typedef scalar_t__ XMLRPC_IntrospectionCallback ;
struct TYPE_8__ {int docslist; } ;


 scalar_t__ Q_PushTail (int *,TYPE_1__*) ;
 TYPE_1__* ecalloc (int,int) ;
 int my_free (TYPE_1__*) ;

int XMLRPC_ServerRegisterIntrospectionCallback(XMLRPC_SERVER server, XMLRPC_IntrospectionCallback cb) {
   int bSuccess = 0;
   if(server && cb) {

      doc_method* dm = ecalloc(1, sizeof(doc_method));

      if(dm) {
         dm->method = cb;
         dm->b_called = 0;

         if(Q_PushTail(&server->docslist, dm)) {
            bSuccess = 1;
         }
         else {
            my_free(dm);
         }
      }
   }
   return bSuccess;
}
