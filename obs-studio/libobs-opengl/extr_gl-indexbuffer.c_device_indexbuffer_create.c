
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_index_buffer {int dynamic; size_t num; size_t width; size_t size; int type; int gl_type; void* data; int * device; } ;
typedef struct gs_index_buffer gs_indexbuffer_t ;
typedef int gs_device_t ;
typedef enum gs_index_type { ____Placeholder_gs_index_type } gs_index_type ;


 int GL_UNSIGNED_INT ;
 int GL_UNSIGNED_SHORT ;
 int GS_DYNAMIC ;
 int GS_UNSIGNED_LONG ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 struct gs_index_buffer* bzalloc (int) ;
 int gs_indexbuffer_destroy (struct gs_index_buffer*) ;
 int init_ib (struct gs_index_buffer*) ;

gs_indexbuffer_t *device_indexbuffer_create(gs_device_t *device,
         enum gs_index_type type,
         void *indices, size_t num,
         uint32_t flags)
{
 struct gs_index_buffer *ib = bzalloc(sizeof(struct gs_index_buffer));
 size_t width = type == GS_UNSIGNED_LONG ? 4 : 2;

 ib->device = device;
 ib->data = indices;
 ib->dynamic = flags & GS_DYNAMIC;
 ib->num = num;
 ib->width = width;
 ib->size = width * num;
 ib->type = type;
 ib->gl_type = type == GS_UNSIGNED_LONG ? GL_UNSIGNED_INT
            : GL_UNSIGNED_SHORT;

 if (!init_ib(ib)) {
  blog(LOG_ERROR, "device_indexbuffer_create (GL) failed");
  gs_indexbuffer_destroy(ib);
  return ((void*)0);
 }

 return ib;
}
