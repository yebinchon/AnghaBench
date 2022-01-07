
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_7__ {scalar_t__ str; } ;
struct TYPE_6__ {TYPE_2__ str; int type; } ;


 int simplestring_add (TYPE_2__*,char const*) ;
 int simplestring_addn (TYPE_2__*,char const*,int) ;
 int simplestring_clear (TYPE_2__*) ;
 int xmlrpc_string ;

const char *XMLRPC_SetValueString(XMLRPC_VALUE value, const char* val, int len) {
   char *pRetval = ((void*)0);
   if(value && val) {
      simplestring_clear(&value->str);
      (len > 0) ? simplestring_addn(&value->str, val, len) :
                  simplestring_add(&value->str, val);
      value->type = xmlrpc_string;
      pRetval = (char *)value->str.str;
   }

   return pRetval;
}
