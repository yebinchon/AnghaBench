
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int cy; } ;
struct TYPE_4__ {TYPE_1__ image; } ;
struct image_source {TYPE_2__ if2; } ;



__attribute__((used)) static uint32_t image_source_getheight(void *data)
{
 struct image_source *context = data;
 return context->if2.image.cy;
}
