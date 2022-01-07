
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int height; } ;


 int XSHM_DATA (void*) ;
 TYPE_1__* data ;

__attribute__((used)) static uint32_t xshm_getheight(void *vptr)
{
 XSHM_DATA(vptr);
 return data->height;
}
