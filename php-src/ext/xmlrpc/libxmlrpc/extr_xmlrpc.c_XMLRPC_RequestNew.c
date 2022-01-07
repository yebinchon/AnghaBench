
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_4__ {int methodName; } ;
typedef int STRUCT_XMLRPC_REQUEST ;


 TYPE_1__* ecalloc (int,int) ;
 int simplestring_init (int *) ;

XMLRPC_REQUEST XMLRPC_RequestNew() {
   XMLRPC_REQUEST xRequest = ecalloc(1, sizeof(STRUCT_XMLRPC_REQUEST));
   if(xRequest) {
      simplestring_init(&xRequest->methodName);
   }
   return xRequest;
}
