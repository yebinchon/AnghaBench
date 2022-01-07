
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * XMLRPC_VALUE ;


 int * XMLRPC_CreateValueEmpty () ;
 int XMLRPC_SetValueID (int *,char const*,int ) ;
 int XMLRPC_SetValueString (int *,char const*,int) ;

XMLRPC_VALUE XMLRPC_CreateValueString(const char* id, const char* val, int len) {
   XMLRPC_VALUE value = ((void*)0);
   if(val) {
      value = XMLRPC_CreateValueEmpty();
      if(value) {
         XMLRPC_SetValueString(value, val, len);
         if(id) {
            XMLRPC_SetValueID(value, id, 0);
         }
      }
   }
   return value;
}
