
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t alloc_len; size_t len; size_t entropy; } ;
typedef TYPE_1__ RAND_POOL ;


 int RAND_F_RAND_POOL_ADD_END ;
 int RAND_R_RANDOM_POOL_OVERFLOW ;
 int RANDerr (int ,int ) ;

int rand_pool_add_end(RAND_POOL *pool, size_t len, size_t entropy)
{
    if (len > pool->alloc_len - pool->len) {
        RANDerr(RAND_F_RAND_POOL_ADD_END, RAND_R_RANDOM_POOL_OVERFLOW);
        return 0;
    }

    if (len > 0) {
        pool->len += len;
        pool->entropy += entropy;
    }

    return 1;
}
