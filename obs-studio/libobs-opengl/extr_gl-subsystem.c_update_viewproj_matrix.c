
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int y; } ;
struct TYPE_7__ {int y; } ;
struct TYPE_6__ {int y; } ;
struct TYPE_5__ {int y; } ;
struct matrix4 {TYPE_4__ t; TYPE_3__ z; TYPE_2__ y; TYPE_1__ x; } ;
struct gs_shader {scalar_t__ viewproj; } ;
struct gs_device {int cur_viewproj; int cur_view; scalar_t__ cur_fbo; int cur_proj; struct gs_shader* cur_vertex_shader; } ;


 int GL_CCW ;
 int GL_CW ;
 int glFrontFace (int ) ;
 int gl_success (char*) ;
 int gs_matrix_get (int *) ;
 int gs_shader_set_matrix4 (scalar_t__,int *) ;
 int matrix4_copy (struct matrix4*,int *) ;
 int matrix4_mul (int *,int *,struct matrix4*) ;
 int matrix4_transpose (int *,int *) ;

__attribute__((used)) static void update_viewproj_matrix(struct gs_device *device)
{
 struct gs_shader *vs = device->cur_vertex_shader;
 struct matrix4 cur_proj;

 gs_matrix_get(&device->cur_view);
 matrix4_copy(&cur_proj, &device->cur_proj);

 if (device->cur_fbo) {
  cur_proj.x.y = -cur_proj.x.y;
  cur_proj.y.y = -cur_proj.y.y;
  cur_proj.z.y = -cur_proj.z.y;
  cur_proj.t.y = -cur_proj.t.y;

  glFrontFace(GL_CW);
 } else {
  glFrontFace(GL_CCW);
 }

 gl_success("glFrontFace");

 matrix4_mul(&device->cur_viewproj, &device->cur_view, &cur_proj);
 matrix4_transpose(&device->cur_viewproj, &device->cur_viewproj);

 if (vs->viewproj)
  gs_shader_set_matrix4(vs->viewproj, &device->cur_viewproj);
}
