
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {int type; int str; } ;


 int simplestring_add (int *,char const*) ;
 int simplestring_addn (int *,char const*,int) ;
 int simplestring_clear (int *) ;
 int xmlrpc_base64 ;

void XMLRPC_SetValueBase64(XMLRPC_VALUE value, const char* s, int len) {
   if(value && s) {
      simplestring_clear(&value->str);
      (len > 0) ? simplestring_addn(&value->str, s, len) :
                  simplestring_add(&value->str, s);
      value->type = xmlrpc_base64;
   }
}
