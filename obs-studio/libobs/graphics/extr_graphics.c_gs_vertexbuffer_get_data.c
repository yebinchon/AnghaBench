
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gs_vb_data {int dummy; } ;
typedef int gs_vertbuffer_t ;
struct TYPE_3__ {struct gs_vb_data* (* gs_vertexbuffer_get_data ) (int const*) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 int gs_valid_p (char*,int const*) ;
 struct gs_vb_data* stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

struct gs_vb_data *gs_vertexbuffer_get_data(const gs_vertbuffer_t *vertbuffer)
{
 if (!gs_valid_p("gs_vertexbuffer_get_data", vertbuffer))
  return ((void*)0);

 return thread_graphics->exports.gs_vertexbuffer_get_data(vertbuffer);
}
