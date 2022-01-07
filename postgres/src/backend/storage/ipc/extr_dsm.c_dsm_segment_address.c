
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* mapped_address; } ;
typedef TYPE_1__ dsm_segment ;


 int Assert (int ) ;

void *
dsm_segment_address(dsm_segment *seg)
{
 Assert(seg->mapped_address != ((void*)0));
 return seg->mapped_address;
}
