
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* eoh_methods; } ;
struct TYPE_5__ {int (* flatten_into ) (TYPE_2__*,void*,int ) ;} ;
typedef int Size ;
typedef TYPE_2__ ExpandedObjectHeader ;


 int stub1 (TYPE_2__*,void*,int ) ;

void
EOH_flatten_into(ExpandedObjectHeader *eohptr,
     void *result, Size allocated_size)
{
 eohptr->eoh_methods->flatten_into(eohptr, result, allocated_size);
}
