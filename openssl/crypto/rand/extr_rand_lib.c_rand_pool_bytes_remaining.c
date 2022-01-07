
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_len; size_t len; } ;
typedef TYPE_1__ RAND_POOL ;



size_t rand_pool_bytes_remaining(RAND_POOL *pool)
{
    return pool->max_len - pool->len;
}
