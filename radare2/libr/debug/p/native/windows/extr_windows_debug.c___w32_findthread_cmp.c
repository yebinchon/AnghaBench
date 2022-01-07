
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tid; } ;
typedef TYPE_1__* PTHREAD_ITEM ;



__attribute__((used)) static int __w32_findthread_cmp(int *tid, PTHREAD_ITEM th) {
 return (int)!(*tid == th->tid);
}
