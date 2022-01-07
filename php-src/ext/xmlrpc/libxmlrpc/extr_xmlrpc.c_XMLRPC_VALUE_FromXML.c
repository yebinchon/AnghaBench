
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * XMLRPC_VALUE ;
typedef int XMLRPC_REQUEST_INPUT_OPTIONS ;
typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_4__ {int * io; } ;


 TYPE_1__* XMLRPC_REQUEST_FromXML (char const*,int,int ) ;
 int XMLRPC_RequestFree (TYPE_1__*,int ) ;

XMLRPC_VALUE XMLRPC_VALUE_FromXML (const char *in_buf, int len, XMLRPC_REQUEST_INPUT_OPTIONS in_options) {
   XMLRPC_VALUE xResponse = ((void*)0);
   XMLRPC_REQUEST req = XMLRPC_REQUEST_FromXML(in_buf, len, in_options);

   if(req) {
      xResponse = req->io;
      XMLRPC_RequestFree(req, 0);
   }
   return xResponse;
}
