
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_platform {int context; int * display; } ;
typedef int Display ;


 int None ;
 int bfree (struct gl_platform*) ;
 int glXDestroyContext (int *,int ) ;
 int glXMakeContextCurrent (int *,int ,int ,int *) ;

__attribute__((used)) static void gl_context_destroy(struct gl_platform *plat)
{
 Display *display = plat->display;

 glXMakeContextCurrent(display, None, None, ((void*)0));
 glXDestroyContext(display, plat->context);
 bfree(plat);
}
