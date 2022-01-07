
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ gs_indexbuffer_t ;
typedef enum gs_index_type { ____Placeholder_gs_index_type } gs_index_type ;



enum gs_index_type gs_indexbuffer_get_type(const gs_indexbuffer_t *ib)
{
 return ib->type;
}
