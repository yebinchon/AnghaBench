
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_REQUEST ;
struct TYPE_6__ {char const* str; } ;
struct TYPE_5__ {TYPE_2__ methodName; } ;


 int simplestring_add (TYPE_2__*,char const*) ;
 int simplestring_clear (TYPE_2__*) ;

const char* XMLRPC_RequestSetMethodName(XMLRPC_REQUEST request, const char* methodName) {
   if(request) {
      simplestring_clear(&request->methodName);
      simplestring_add(&request->methodName, methodName);
      return request->methodName.str;
   }
   return ((void*)0);
}
