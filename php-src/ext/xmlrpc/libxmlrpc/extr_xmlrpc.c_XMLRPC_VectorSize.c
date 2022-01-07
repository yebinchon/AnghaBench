
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* XMLRPC_VALUE ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__* v; } ;
struct TYPE_4__ {int q; } ;


 int Q_Size (int ) ;
 scalar_t__ xmlrpc_vector ;

int XMLRPC_VectorSize(XMLRPC_VALUE value) {
   int size = 0;
   if(value && value->type == xmlrpc_vector && value->v) {
      size = Q_Size(value->v->q);
   }
   return size;
}
