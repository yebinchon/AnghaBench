
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_windowinfo {scalar_t__ hdc; int hwnd; } ;


 int ReleaseDC (int ,scalar_t__) ;
 int bfree (struct gl_windowinfo*) ;

void gl_windowinfo_destroy(struct gl_windowinfo *wi)
{
 if (wi) {
  if (wi->hdc)
   ReleaseDC(wi->hwnd, wi->hdc);
  bfree(wi);
 }
}
