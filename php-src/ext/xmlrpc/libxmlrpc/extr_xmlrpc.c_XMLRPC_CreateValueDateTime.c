
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef scalar_t__ XMLRPC_VALUE ;


 scalar_t__ XMLRPC_CreateValueEmpty () ;
 int XMLRPC_SetValueDateTime (scalar_t__,int ) ;
 int XMLRPC_SetValueID (scalar_t__,char const*,int ) ;

XMLRPC_VALUE XMLRPC_CreateValueDateTime(const char* id, time_t time) {
   XMLRPC_VALUE val = XMLRPC_CreateValueEmpty();
   if(val) {
      XMLRPC_SetValueDateTime(val, time);
      if(id) {
         XMLRPC_SetValueID(val, id, 0);
      }
   }
   return val;
}
