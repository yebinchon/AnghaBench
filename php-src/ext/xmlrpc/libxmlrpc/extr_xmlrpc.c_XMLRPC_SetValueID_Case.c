
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
typedef scalar_t__ XMLRPC_CASE ;
struct TYPE_7__ {int len; char* str; } ;
struct TYPE_6__ {TYPE_2__ id; } ;


 int printf (char*,char const*) ;
 int simplestring_add (TYPE_2__*,char const*) ;
 int simplestring_addn (TYPE_2__*,char const*,int) ;
 int simplestring_clear (TYPE_2__*) ;
 char tolower (char) ;
 char toupper (char) ;
 scalar_t__ xmlrpc_case_lower ;
 scalar_t__ xmlrpc_case_upper ;

const char *XMLRPC_SetValueID_Case(XMLRPC_VALUE value, const char* id, int len, XMLRPC_CASE id_case) {
   const char* pRetval = ((void*)0);
   if(value) {
      if(id) {
         simplestring_clear(&value->id);
         (len > 0) ? simplestring_addn(&value->id, id, len) :
                     simplestring_add(&value->id, id);


         if(id_case == xmlrpc_case_lower || id_case == xmlrpc_case_upper) {
            int i;
            for(i = 0; i < value->id.len; i++) {
     value->id.str[i] =
     (id_case ==
      xmlrpc_case_lower) ? tolower (value->id.
                str[i]) : toupper (value->
                       id.
                       str[i]);
            }
         }

         pRetval = value->id.str;




      }
   }

   return pRetval;
}
