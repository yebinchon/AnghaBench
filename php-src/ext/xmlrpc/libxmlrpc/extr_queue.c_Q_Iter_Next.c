
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * q_iter ;
struct TYPE_2__ {scalar_t__ next; } ;
typedef TYPE_1__ node ;



q_iter Q_Iter_Next(q_iter qi) {
   return qi ? (q_iter)((node*)qi)->next : ((void*)0);
}
