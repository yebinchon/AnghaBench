
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_4__ {scalar_t__ error; scalar_t__ io; int methodName; } ;


 int XMLRPC_CleanupValue (scalar_t__) ;
 int my_free (TYPE_1__*) ;
 int simplestring_free (int *) ;

void XMLRPC_RequestFree(XMLRPC_REQUEST request, int bFreeIO) {
   if(request) {
      simplestring_free(&request->methodName);

      if(request->io && bFreeIO) {
         XMLRPC_CleanupValue(request->io);
      }
      if(request->error) {
         XMLRPC_CleanupValue(request->error);
      }
      my_free(request);
   }
}
