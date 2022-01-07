
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {int i; int type; } ;


 int xmlrpc_int ;

void XMLRPC_SetValueInt(XMLRPC_VALUE value, int val) {
   if(value) {
      value->type = xmlrpc_int;
      value->i = val;
   }
}
