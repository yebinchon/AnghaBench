
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buffer; scalar_t__ entropy; } ;
typedef TYPE_1__ RAND_POOL ;



unsigned char *rand_pool_detach(RAND_POOL *pool)
{
    unsigned char *ret = pool->buffer;
    pool->buffer = ((void*)0);
    pool->entropy = 0;
    return ret;
}
