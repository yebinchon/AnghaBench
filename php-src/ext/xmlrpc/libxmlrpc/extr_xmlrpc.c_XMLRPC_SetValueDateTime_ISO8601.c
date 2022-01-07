
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {int str; int i; int type; } ;


 int date_from_ISO8601 (char const*,int *) ;
 int simplestring_add (int *,char const*) ;
 int simplestring_clear (int *) ;
 int xmlrpc_datetime ;

void XMLRPC_SetValueDateTime_ISO8601(XMLRPC_VALUE value, const char* s) {
   if(value) {
      time_t time_val = 0;
      if(s) {
         value->type = xmlrpc_datetime;
         date_from_ISO8601(s, &time_val);
         value->i = time_val;
         simplestring_clear(&value->str);
         simplestring_add(&value->str, s);
      }
   }
}
