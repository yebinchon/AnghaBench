
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; } ;
typedef TYPE_1__ server_method ;
typedef int XMLRPC_VALUE ;
typedef int XMLRPC_SERVER ;


 int XMLRPC_AddValueToVector (int ,int ) ;
 TYPE_1__* find_method (int ,char const*) ;

__attribute__((used)) static inline void describe_method(XMLRPC_SERVER server, XMLRPC_VALUE vector, const char* method) {
   if(method) {
      server_method* sm = find_method(server, method);
      if(sm) {
         XMLRPC_AddValueToVector(vector, sm->desc);
      }
   }
}
