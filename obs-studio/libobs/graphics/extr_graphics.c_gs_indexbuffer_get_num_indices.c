
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_indexbuffer_t ;
struct TYPE_3__ {size_t (* gs_indexbuffer_get_num_indices ) (int const*) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 int gs_valid_p (char*,int const*) ;
 size_t stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

size_t gs_indexbuffer_get_num_indices(const gs_indexbuffer_t *indexbuffer)
{
 if (!gs_valid_p("gs_indexbuffer_get_num_indices", indexbuffer))
  return 0;

 return thread_graphics->exports.gs_indexbuffer_get_num_indices(
  indexbuffer);
}
