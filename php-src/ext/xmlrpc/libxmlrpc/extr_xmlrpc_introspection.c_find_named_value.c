
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * XMLRPC_VALUE ;


 char* XMLRPC_VectorGetStringWithID (int *,int ) ;
 int * XMLRPC_VectorNext (int *) ;
 int * XMLRPC_VectorRewind (int *) ;
 int strcmp (char const*,char const*) ;
 int xi_token_name ;

__attribute__((used)) static inline XMLRPC_VALUE find_named_value(XMLRPC_VALUE list, const char* needle) {
   XMLRPC_VALUE xIter = XMLRPC_VectorRewind(list);
   while(xIter) {
      const char* name = XMLRPC_VectorGetStringWithID(xIter, xi_token_name);
      if(name && !strcmp(name, needle)) {
         return xIter;
      }
      xIter = XMLRPC_VectorNext(list);
   }
   return ((void*)0);
}
