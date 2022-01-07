
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vec3 {int dummy; } ;
struct gs_vertex_buffer {int vertex_buffer; int normal_buffer; int tangent_buffer; int color_buffer; int vao; TYPE_1__* data; scalar_t__ dynamic; int uv_sizes; int uv_buffers; } ;
struct gs_tvertarray {int width; scalar_t__ array; } ;
struct TYPE_2__ {int num; size_t num_tex; struct gs_tvertarray* tvarray; scalar_t__ colors; scalar_t__ tangents; scalar_t__ normals; scalar_t__ points; } ;
typedef int GLuint ;
typedef int GLenum ;


 int GL_ARRAY_BUFFER ;
 int GL_STATIC_DRAW ;
 int GL_STREAM_DRAW ;
 int da_push_back (int ,int*) ;
 int da_reserve (int ,size_t) ;
 int gl_create_buffer (int ,int*,size_t,scalar_t__,int ) ;
 int gl_gen_vertex_arrays (int,int *) ;
 int gs_vbdata_destroy (TYPE_1__*) ;

__attribute__((used)) static bool create_buffers(struct gs_vertex_buffer *vb)
{
 GLenum usage = vb->dynamic ? GL_STREAM_DRAW : GL_STATIC_DRAW;
 size_t i;

 if (!gl_create_buffer(GL_ARRAY_BUFFER, &vb->vertex_buffer,
         vb->data->num * sizeof(struct vec3),
         vb->data->points, usage))
  return 0;

 if (vb->data->normals) {
  if (!gl_create_buffer(GL_ARRAY_BUFFER, &vb->normal_buffer,
          vb->data->num * sizeof(struct vec3),
          vb->data->normals, usage))
   return 0;
 }

 if (vb->data->tangents) {
  if (!gl_create_buffer(GL_ARRAY_BUFFER, &vb->tangent_buffer,
          vb->data->num * sizeof(struct vec3),
          vb->data->tangents, usage))
   return 0;
 }

 if (vb->data->colors) {
  if (!gl_create_buffer(GL_ARRAY_BUFFER, &vb->color_buffer,
          vb->data->num * sizeof(uint32_t),
          vb->data->colors, usage))
   return 0;
 }

 da_reserve(vb->uv_buffers, vb->data->num_tex);
 da_reserve(vb->uv_sizes, vb->data->num_tex);

 for (i = 0; i < vb->data->num_tex; i++) {
  GLuint tex_buffer;
  struct gs_tvertarray *tv = vb->data->tvarray + i;
  size_t size = vb->data->num * sizeof(float) * tv->width;

  if (!gl_create_buffer(GL_ARRAY_BUFFER, &tex_buffer, size,
          tv->array, usage))
   return 0;

  da_push_back(vb->uv_buffers, &tex_buffer);
  da_push_back(vb->uv_sizes, &tv->width);
 }

 if (!vb->dynamic) {
  gs_vbdata_destroy(vb->data);
  vb->data = ((void*)0);
 }

 if (!gl_gen_vertex_arrays(1, &vb->vao))
  return 0;

 return 1;
}
