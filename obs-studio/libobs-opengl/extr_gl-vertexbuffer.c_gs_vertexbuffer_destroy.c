
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* array; scalar_t__ num; } ;
struct TYPE_5__ {int data; TYPE_3__ uv_buffers; TYPE_3__ uv_sizes; scalar_t__ vao; scalar_t__ color_buffer; scalar_t__ tangent_buffer; scalar_t__ normal_buffer; scalar_t__ vertex_buffer; } ;
typedef TYPE_1__ gs_vertbuffer_t ;
typedef int GLsizei ;


 int bfree (TYPE_1__*) ;
 int da_free (TYPE_3__) ;
 int gl_delete_buffers (int,scalar_t__*) ;
 int gl_delete_vertex_arrays (int,scalar_t__*) ;
 int gs_vbdata_destroy (int ) ;

void gs_vertexbuffer_destroy(gs_vertbuffer_t *vb)
{
 if (vb) {
  if (vb->vertex_buffer)
   gl_delete_buffers(1, &vb->vertex_buffer);
  if (vb->normal_buffer)
   gl_delete_buffers(1, &vb->normal_buffer);
  if (vb->tangent_buffer)
   gl_delete_buffers(1, &vb->tangent_buffer);
  if (vb->color_buffer)
   gl_delete_buffers(1, &vb->color_buffer);
  if (vb->uv_buffers.num)
   gl_delete_buffers((GLsizei)vb->uv_buffers.num,
       vb->uv_buffers.array);

  if (vb->vao)
   gl_delete_vertex_arrays(1, &vb->vao);

  da_free(vb->uv_sizes);
  da_free(vb->uv_buffers);
  gs_vbdata_destroy(vb->data);

  bfree(vb);
 }
}
