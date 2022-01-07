
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct vec4 {int dummy; } ;
struct TYPE_4__ {int (* device_clear ) (int ,int ,struct vec4 const*,float,int ) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int ,int ,struct vec4 const*,float,int ) ;
 TYPE_2__* thread_graphics ;

void gs_clear(uint32_t clear_flags, const struct vec4 *color, float depth,
       uint8_t stencil)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_clear"))
  return;

 graphics->exports.device_clear(graphics->device, clear_flags, color,
           depth, stencil);
}
