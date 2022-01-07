
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XErrorEvent ;
typedef int Display ;


 int NK_UNUSED (int *) ;
 int gl_err ;
 int nk_true ;

__attribute__((used)) static int gl_error_handler(Display *dpy, XErrorEvent *ev)
{NK_UNUSED(dpy); NK_UNUSED(ev); gl_err = nk_true;return 0;}
