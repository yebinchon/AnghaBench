
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * q_iter ;
struct TYPE_2__ {scalar_t__ prev; } ;
typedef TYPE_1__ node ;



q_iter Q_Iter_Prev(q_iter qi) {
   return qi ? (q_iter)((node*)qi)->prev : ((void*)0);
}
