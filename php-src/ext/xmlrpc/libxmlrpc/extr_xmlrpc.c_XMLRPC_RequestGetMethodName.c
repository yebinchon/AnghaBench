
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* XMLRPC_REQUEST ;
struct TYPE_4__ {char const* str; } ;
struct TYPE_5__ {TYPE_1__ methodName; } ;



const char* XMLRPC_RequestGetMethodName(XMLRPC_REQUEST request) {
   return request ? request->methodName.str : ((void*)0);
}
