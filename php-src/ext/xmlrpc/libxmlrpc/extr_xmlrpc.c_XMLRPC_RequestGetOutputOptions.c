
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * XMLRPC_REQUEST_OUTPUT_OPTIONS ;
typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_3__ {int output; } ;



XMLRPC_REQUEST_OUTPUT_OPTIONS XMLRPC_RequestGetOutputOptions(XMLRPC_REQUEST request) {
   return request ? &request->output : ((void*)0);
}
