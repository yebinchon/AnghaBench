
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; int * array; } ;
struct TYPE_3__ {scalar_t__* array; } ;
struct gs_vertex_buffer {TYPE_2__ uv_buffers; TYPE_1__ uv_sizes; int color_buffer; int tangent_buffer; int normal_buffer; int vertex_buffer; } ;
typedef enum attrib_type { ____Placeholder_attrib_type } attrib_type ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;


 int ATTRIB_COLOR ;
 int ATTRIB_NORMAL ;
 int ATTRIB_POSITION ;
 int ATTRIB_TANGENT ;
 int ATTRIB_TEXCOORD ;
 int GL_FLOAT ;
 int GL_UNSIGNED_BYTE ;

__attribute__((used)) static inline GLuint get_vb_buffer(struct gs_vertex_buffer *vb,
       enum attrib_type type, size_t index,
       GLint *width, GLenum *gl_type)
{
 *gl_type = GL_FLOAT;
 *width = 4;

 if (type == ATTRIB_POSITION) {
  return vb->vertex_buffer;
 } else if (type == ATTRIB_NORMAL) {
  return vb->normal_buffer;
 } else if (type == ATTRIB_TANGENT) {
  return vb->tangent_buffer;
 } else if (type == ATTRIB_COLOR) {
  *gl_type = GL_UNSIGNED_BYTE;
  return vb->color_buffer;
 } else if (type == ATTRIB_TEXCOORD) {
  if (vb->uv_buffers.num <= index)
   return 0;

  *width = (GLint)vb->uv_sizes.array[index];
  return vb->uv_buffers.array[index];
 }

 return 0;
}
