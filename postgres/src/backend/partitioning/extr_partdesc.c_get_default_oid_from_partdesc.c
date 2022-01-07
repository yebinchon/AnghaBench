
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t default_index; } ;
struct TYPE_4__ {TYPE_2__* boundinfo; int * oids; } ;
typedef TYPE_1__* PartitionDesc ;
typedef int Oid ;


 int InvalidOid ;
 scalar_t__ partition_bound_has_default (TYPE_2__*) ;

Oid
get_default_oid_from_partdesc(PartitionDesc partdesc)
{
 if (partdesc && partdesc->boundinfo &&
  partition_bound_has_default(partdesc->boundinfo))
  return partdesc->oids[partdesc->boundinfo->default_index];

 return InvalidOid;
}
