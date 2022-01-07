
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_indexbuffer_t ;
typedef enum gs_index_type { ____Placeholder_gs_index_type } gs_index_type ;
struct TYPE_3__ {int (* gs_indexbuffer_get_type ) (int const*) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 int gs_valid_p (char*,int const*) ;
 int stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

enum gs_index_type gs_indexbuffer_get_type(const gs_indexbuffer_t *indexbuffer)
{
 if (!gs_valid_p("gs_indexbuffer_get_type", indexbuffer))
  return (enum gs_index_type)0;

 return thread_graphics->exports.gs_indexbuffer_get_type(indexbuffer);
}
