
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ PoolQueue ;


 int pool_release (int ,int) ;

void poolq_release(PoolQueue *c, int idx) {
  pool_release(c->pool, idx);
}
