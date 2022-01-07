
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* XMLRPC_VALUE ;
struct TYPE_9__ {int len; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__* v; TYPE_1__ id; } ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ q; } ;


 int Q_PushTail (scalar_t__,int ) ;
 int XMLRPC_CopyValue (TYPE_3__*) ;
 int isDuplicateEntry (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ xmlrpc_vector_array ;
 scalar_t__ xmlrpc_vector_none ;

int XMLRPC_AddValueToVector(XMLRPC_VALUE target, XMLRPC_VALUE source) {
   if(target && source) {
      if(target->type == 128 && target->v &&
         target->v->q && target->v->type != xmlrpc_vector_none) {


         switch(source->type) {
            case 131:
            case 135:
            case 134:
            case 133:
            case 132:
            case 130:
            case 129:
            case 128:

               if( !(source->id.len && target->v->type == xmlrpc_vector_array) ) {
     if (isDuplicateEntry (target, source)
       || Q_PushTail (target->v->q, XMLRPC_CopyValue (source))) {
                     return 1;
                  }
               }
               else {


               }
               break;
            default:


               break;
         }
      }
   }
   return 0;
}
