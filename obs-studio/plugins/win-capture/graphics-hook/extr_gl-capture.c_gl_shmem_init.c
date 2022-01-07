
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cx; int format; int cy; int base_cy; int base_cx; int shmem_info; } ;
typedef int HWND ;


 int capture_init_shmem (int *,int ,int ,int ,int,int ,int,int ,int) ;
 TYPE_1__ data ;
 int gl_init_fbo () ;
 int gl_shmem_init_buffers () ;
 int hlog (char*) ;

__attribute__((used)) static bool gl_shmem_init(HWND window)
{
 if (!gl_shmem_init_buffers()) {
  return 0;
 }
 if (!gl_init_fbo()) {
  return 0;
 }
 if (!capture_init_shmem(&data.shmem_info, window, data.base_cx,
    data.base_cy, data.cx, data.cy, data.cx * 4,
    data.format, 1)) {
  return 0;
 }

 hlog("gl memory capture successful");
 return 1;
}
