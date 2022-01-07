
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_platform {int dummy; } ;


 int gl_context_destroy (struct gl_platform*) ;

extern void gl_platform_destroy(struct gl_platform *plat)
{
 if (!plat)
  return;

 gl_context_destroy(plat);
}
