
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XMLRPC_VALUE ;


 scalar_t__ XMLRPC_CreateValueEmpty () ;
 int XMLRPC_SetValueID (scalar_t__,char const*,int ) ;
 int XMLRPC_SetValueInt (scalar_t__,int) ;

XMLRPC_VALUE XMLRPC_CreateValueInt(const char* id, int i) {
   XMLRPC_VALUE val = XMLRPC_CreateValueEmpty();
   if(val) {
      XMLRPC_SetValueInt(val, i);
      if(id) {
         XMLRPC_SetValueID(val, id, 0);
      }
   }
   return val;
}
