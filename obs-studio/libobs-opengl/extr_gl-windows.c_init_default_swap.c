
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdc; } ;
struct gl_platform {TYPE_1__ window; } ;
typedef int gs_device_t ;
typedef int PIXELFORMATDESCRIPTOR ;


 int gl_setpixelformat (int ,int,int *) ;

__attribute__((used)) static bool init_default_swap(struct gl_platform *plat, gs_device_t *device,
         int pixel_format, PIXELFORMATDESCRIPTOR *pfd)
{
 if (!gl_setpixelformat(plat->window.hdc, pixel_format, pfd))
  return 0;

 return 1;
}
