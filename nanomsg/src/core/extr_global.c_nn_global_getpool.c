
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_pool {int dummy; } ;
struct TYPE_2__ {struct nn_pool pool; } ;


 TYPE_1__ self ;

struct nn_pool *nn_global_getpool ()
{
    return &self.pool;
}
