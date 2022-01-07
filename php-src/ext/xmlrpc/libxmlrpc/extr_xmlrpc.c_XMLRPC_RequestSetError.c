
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * XMLRPC_VALUE ;
typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_3__ {int * error; } ;


 int XMLRPC_CleanupValue (int *) ;
 int * XMLRPC_CopyValue (int *) ;

XMLRPC_VALUE XMLRPC_RequestSetError (XMLRPC_REQUEST request, XMLRPC_VALUE error) {
 if (request && error) {
  if (request->error) {
   XMLRPC_CleanupValue (request->error);
  }
  request->error = XMLRPC_CopyValue (error);
  return request->error;
 }
 return ((void*)0);
}
