
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * XMLRPC_REQUEST_OUTPUT_OPTIONS ;
typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_3__ {int output; } ;
typedef int STRUCT_XMLRPC_REQUEST_OUTPUT_OPTIONS ;


 int memcpy (int *,int *,int) ;

XMLRPC_REQUEST_OUTPUT_OPTIONS XMLRPC_RequestSetOutputOptions(XMLRPC_REQUEST request, XMLRPC_REQUEST_OUTPUT_OPTIONS output) {
   if(request && output) {
  memcpy (&request->output, output,
      sizeof (STRUCT_XMLRPC_REQUEST_OUTPUT_OPTIONS));
      return &request->output;
   }
   return ((void*)0);
}
