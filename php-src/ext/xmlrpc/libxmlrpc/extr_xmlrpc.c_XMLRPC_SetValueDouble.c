
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* XMLRPC_VALUE ;
struct TYPE_3__ {double d; int type; } ;


 int xmlrpc_double ;

void XMLRPC_SetValueDouble(XMLRPC_VALUE value, double val) {
   if(value) {
      value->type = xmlrpc_double;
      value->d = val;
   }
}
