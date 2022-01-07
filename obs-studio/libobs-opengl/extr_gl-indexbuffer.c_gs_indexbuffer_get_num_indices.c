
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num; } ;
typedef TYPE_1__ gs_indexbuffer_t ;



size_t gs_indexbuffer_get_num_indices(const gs_indexbuffer_t *ib)
{
 return ib->num;
}
