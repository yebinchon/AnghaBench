
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; } ;
typedef TYPE_1__ dsm_segment ;
typedef int dsm_handle ;



dsm_handle
dsm_segment_handle(dsm_segment *seg)
{
 return seg->handle;
}
