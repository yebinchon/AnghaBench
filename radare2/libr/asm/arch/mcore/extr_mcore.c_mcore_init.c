
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_3__ {int const* end; int const* pos; } ;
typedef TYPE_1__ mcore_handle ;



int mcore_init(mcore_handle* handle, const ut8* buffer, const ut32 size) {
 if (!handle || !buffer || size < 2) {
  return 1;
 }
 handle->pos = buffer;
 handle->end = buffer + size;
 return 0;
}
