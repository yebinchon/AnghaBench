
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; } ;
struct TYPE_3__ {scalar_t__ magic; } ;


 scalar_t__ RELMAPPER_FILEMAGIC ;
 int load_relmap_file (int) ;
 TYPE_2__ local_map ;
 TYPE_1__ shared_map ;

void
RelationMapInvalidateAll(void)
{
 if (shared_map.magic == RELMAPPER_FILEMAGIC)
  load_relmap_file(1);
 if (local_map.magic == RELMAPPER_FILEMAGIC)
  load_relmap_file(0);
}
