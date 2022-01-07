
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursor; } ;
typedef TYPE_1__ queue ;
typedef int q_iter ;


 void* Q_Iter_Del (TYPE_1__*,int ) ;

void *Q_DelCur(queue* q) {
   if(q) {
      return Q_Iter_Del(q, (q_iter)q->cursor);
   }
   return 0;
}
