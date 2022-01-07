
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XMLRPC_VALUE ;


 scalar_t__ XMLRPC_CreateValueEmpty () ;
 int XMLRPC_SetValueBoolean (scalar_t__,int) ;
 int XMLRPC_SetValueID (scalar_t__,char const*,int ) ;

XMLRPC_VALUE XMLRPC_CreateValueBoolean(const char* id, int i) {
   XMLRPC_VALUE val = XMLRPC_CreateValueEmpty();
   if(val) {
      XMLRPC_SetValueBoolean(val, i);
      if(id) {
         XMLRPC_SetValueID(val, id, 0);
      }
   }
   return val;
}
