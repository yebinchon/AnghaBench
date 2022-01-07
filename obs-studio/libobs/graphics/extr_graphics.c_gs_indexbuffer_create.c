
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gs_indexbuffer_t ;
struct TYPE_4__ {int * (* device_indexbuffer_create ) (int ,int,void*,size_t,int) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_index_type { ____Placeholder_gs_index_type } gs_index_type ;


 int GS_DUP_BUFFER ;
 int GS_UNSIGNED_SHORT ;
 void* bmemdup (void*,size_t) ;
 int gs_valid (char*) ;
 int * stub1 (int ,int,void*,size_t,int) ;
 TYPE_2__* thread_graphics ;

gs_indexbuffer_t *gs_indexbuffer_create(enum gs_index_type type, void *indices,
     size_t num, uint32_t flags)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_indexbuffer_create"))
  return ((void*)0);

 if (indices && num && (flags & GS_DUP_BUFFER) != 0) {
  size_t size = type == GS_UNSIGNED_SHORT ? 2 : 4;
  indices = bmemdup(indices, size * num);
 }

 return graphics->exports.device_indexbuffer_create(
  graphics->device, type, indices, num, flags);
}
