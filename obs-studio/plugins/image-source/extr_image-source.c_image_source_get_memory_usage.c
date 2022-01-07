
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int mem_usage; } ;
struct image_source {TYPE_1__ if2; } ;



uint64_t image_source_get_memory_usage(void *data)
{
 struct image_source *s = data;
 return s->if2.mem_usage;
}
