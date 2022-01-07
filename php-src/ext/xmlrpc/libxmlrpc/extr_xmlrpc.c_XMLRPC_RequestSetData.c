
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * XMLRPC_VALUE ;
typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_3__ {int * io; } ;


 int XMLRPC_CleanupValue (int *) ;
 int * XMLRPC_CopyValue (int *) ;

XMLRPC_VALUE XMLRPC_RequestSetData(XMLRPC_REQUEST request, XMLRPC_VALUE data) {
   if(request && data) {
  if (request->io) {
   XMLRPC_CleanupValue (request->io);
  }
      request->io = XMLRPC_CopyValue(data);
      return request->io;
   }
   return ((void*)0);
}
