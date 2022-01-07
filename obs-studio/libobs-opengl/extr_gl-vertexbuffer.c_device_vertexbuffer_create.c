
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_vertex_buffer {int dynamic; int num; struct gs_vb_data* data; int * device; } ;
struct gs_vb_data {int num; } ;
typedef struct gs_vertex_buffer gs_vertbuffer_t ;
typedef int gs_device_t ;


 int GS_DYNAMIC ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_vertex_buffer* bzalloc (int) ;
 int create_buffers (struct gs_vertex_buffer*) ;
 int gs_vertexbuffer_destroy (struct gs_vertex_buffer*) ;

gs_vertbuffer_t *device_vertexbuffer_create(gs_device_t *device,
         struct gs_vb_data *data,
         uint32_t flags)
{
 struct gs_vertex_buffer *vb = bzalloc(sizeof(struct gs_vertex_buffer));
 vb->device = device;
 vb->data = data;
 vb->num = data->num;
 vb->dynamic = flags & GS_DYNAMIC;

 if (!create_buffers(vb)) {
  blog(LOG_ERROR, "device_vertexbuffer_create (GL) failed");
  gs_vertexbuffer_destroy(vb);
  return ((void*)0);
 }

 return vb;
}
