
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gs_vb_data {int dummy; } ;
typedef int gs_vertbuffer_t ;
struct TYPE_3__ {int (* gs_vertexbuffer_flush_direct ) (int *,struct gs_vb_data const*) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 int gs_valid_p2 (char*,int *,struct gs_vb_data const*) ;
 int stub1 (int *,struct gs_vb_data const*) ;
 TYPE_2__* thread_graphics ;

void gs_vertexbuffer_flush_direct(gs_vertbuffer_t *vertbuffer,
      const struct gs_vb_data *data)
{
 if (!gs_valid_p2("gs_vertexbuffer_flush_direct", vertbuffer, data))
  return;

 thread_graphics->exports.gs_vertexbuffer_flush_direct(vertbuffer, data);
}
