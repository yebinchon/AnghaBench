
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; scalar_t__ inc; int const* end; int const* pos; } ;
typedef TYPE_1__ vle_handle ;
typedef int ut8 ;
typedef int ut32 ;


 int VLE_DEFAULTS ;

int vle_init(vle_handle* handle, const ut8* buffer, const ut32 size) {
 if (!handle || !buffer || size < 2) {
  return 1;
 }
 handle->pos = buffer;
 handle->end = buffer + size;
 handle->inc = 0;
 handle->options = VLE_DEFAULTS;
 return 0;
}
