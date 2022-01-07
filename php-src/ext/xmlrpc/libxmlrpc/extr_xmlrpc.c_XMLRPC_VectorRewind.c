
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* XMLRPC_VALUE ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* v; } ;
struct TYPE_5__ {int q; } ;


 scalar_t__ Q_Head (int ) ;
 scalar_t__ xmlrpc_vector ;

XMLRPC_VALUE XMLRPC_VectorRewind(XMLRPC_VALUE value) {
   XMLRPC_VALUE xReturn = ((void*)0);
   if(value && value->type == xmlrpc_vector && value->v) {
      xReturn = (XMLRPC_VALUE)Q_Head(value->v->q);
   }
   return xReturn;
}
