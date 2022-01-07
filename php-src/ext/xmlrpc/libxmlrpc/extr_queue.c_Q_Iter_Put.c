
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ q_iter ;
struct TYPE_2__ {void* data; } ;
typedef TYPE_1__ node ;


 int False_ ;
 int True_ ;

int Q_Iter_Put(q_iter qi, void* data) {
   if(qi) {
      ((node*)qi)->data = data;
      return True_;
   }
   return False_;
}
