
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vec3 {int dummy; } ;
struct vec2 {int dummy; } ;
struct gs_vb_data {int num; int num_tex; TYPE_1__* tvarray; void* colors; void* normals; void* points; } ;
struct gs_tvertarray {int dummy; } ;
struct TYPE_4__ {int (* device_vertexbuffer_create ) (int ,struct gs_vb_data*,int ) ;} ;
struct graphics_subsystem {int immediate_vertbuffer; int device; TYPE_2__ exports; } ;
struct TYPE_3__ {int width; void* array; } ;


 int GS_DYNAMIC ;
 int IMMEDIATE_COUNT ;
 void* bmalloc (int) ;
 struct gs_vb_data* gs_vbdata_create () ;
 int stub1 (int ,struct gs_vb_data*,int ) ;

__attribute__((used)) static bool graphics_init_immediate_vb(struct graphics_subsystem *graphics)
{
 struct gs_vb_data *vbd;

 vbd = gs_vbdata_create();
 vbd->num = IMMEDIATE_COUNT;
 vbd->points = bmalloc(sizeof(struct vec3) * IMMEDIATE_COUNT);
 vbd->normals = bmalloc(sizeof(struct vec3) * IMMEDIATE_COUNT);
 vbd->colors = bmalloc(sizeof(uint32_t) * IMMEDIATE_COUNT);
 vbd->num_tex = 1;
 vbd->tvarray = bmalloc(sizeof(struct gs_tvertarray));
 vbd->tvarray[0].width = 2;
 vbd->tvarray[0].array = bmalloc(sizeof(struct vec2) * IMMEDIATE_COUNT);

 graphics->immediate_vertbuffer =
  graphics->exports.device_vertexbuffer_create(graphics->device,
            vbd, GS_DYNAMIC);
 if (!graphics->immediate_vertbuffer)
  return 0;

 return 1;
}
