
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int XMLRPC_REQUEST_TYPE ;
typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_3__ {int request_type; } ;


 int xmlrpc_request_none ;

XMLRPC_REQUEST_TYPE XMLRPC_RequestSetRequestType (XMLRPC_REQUEST request,
                  XMLRPC_REQUEST_TYPE type) {
   if(request) {
      request->request_type = type;
      return request->request_type;
   }
   return xmlrpc_request_none;
}
