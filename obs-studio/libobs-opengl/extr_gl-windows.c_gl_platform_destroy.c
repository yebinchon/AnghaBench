
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwnd; scalar_t__ hdc; } ;
struct gl_platform {TYPE_1__ window; scalar_t__ hrc; } ;


 int DestroyWindow (scalar_t__) ;
 int ReleaseDC (scalar_t__,scalar_t__) ;
 int bfree (struct gl_platform*) ;
 int wglDeleteContext (scalar_t__) ;
 int wglMakeCurrent (int *,int *) ;

void gl_platform_destroy(struct gl_platform *plat)
{
 if (plat) {
  if (plat->hrc) {
   wglMakeCurrent(((void*)0), ((void*)0));
   wglDeleteContext(plat->hrc);
  }

  if (plat->window.hdc)
   ReleaseDC(plat->window.hwnd, plat->window.hdc);
  if (plat->window.hwnd)
   DestroyWindow(plat->window.hwnd);

  bfree(plat);
 }
}
