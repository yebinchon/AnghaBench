
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_zstencil_t ;
struct TYPE_3__ {int (* gs_zstencil_destroy ) (int *) ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 int gs_valid (char*) ;
 int stub1 (int *) ;
 TYPE_2__* thread_graphics ;

void gs_zstencil_destroy(gs_zstencil_t *zstencil)
{
 if (!gs_valid("gs_zstencil_destroy"))
  return;
 if (!zstencil)
  return;

 thread_graphics->exports.gs_zstencil_destroy(zstencil);
}
