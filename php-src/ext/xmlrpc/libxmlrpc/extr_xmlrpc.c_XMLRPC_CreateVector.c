
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VECTOR_TYPE ;
typedef int * XMLRPC_VALUE ;


 int * XMLRPC_CreateValueEmpty () ;
 scalar_t__ XMLRPC_SetIsVector (int *,int ) ;
 char* XMLRPC_SetValueID (int *,char const*,int ) ;

XMLRPC_VALUE XMLRPC_CreateVector(const char* id, XMLRPC_VECTOR_TYPE type) {
   XMLRPC_VALUE val = ((void*)0);

   val = XMLRPC_CreateValueEmpty();
   if(val) {
      if(XMLRPC_SetIsVector(val, type)) {
         if(id) {
            const char *pSVI = ((void*)0);

            pSVI = XMLRPC_SetValueID(val, id, 0);
            if(((void*)0) == pSVI) {
               val = ((void*)0);
            }
         }
      }
      else {
         val = ((void*)0);
      }
   }
   return val;
}
