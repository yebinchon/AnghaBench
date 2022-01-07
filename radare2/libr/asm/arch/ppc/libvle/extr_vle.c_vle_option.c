
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; } ;
typedef TYPE_1__ vle_handle ;
typedef int ut32 ;



int vle_option(vle_handle* handle, ut32 option) {
 if (!handle) {
  return 1;
 }
 handle->options |= option;
 return 0;
}
