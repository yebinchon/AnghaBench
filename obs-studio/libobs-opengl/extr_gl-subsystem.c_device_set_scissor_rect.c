
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_rect {int cy; int cx; int y; int x; } ;
typedef int gs_device_t ;


 int GL_SCISSOR_TEST ;
 int LOG_ERROR ;
 int UNUSED_PARAMETER (int *) ;
 int blog (int ,char*) ;
 int glScissor (int ,int ,int ,int ) ;
 scalar_t__ gl_disable (int ) ;
 scalar_t__ gl_enable (int ) ;
 scalar_t__ gl_success (char*) ;

void device_set_scissor_rect(gs_device_t *device, const struct gs_rect *rect)
{
 UNUSED_PARAMETER(device);

 if (rect != ((void*)0)) {
  glScissor(rect->x, rect->y, rect->cx, rect->cy);
  if (gl_success("glScissor") && gl_enable(GL_SCISSOR_TEST))
   return;

 } else if (gl_disable(GL_SCISSOR_TEST)) {
  return;
 }

 blog(LOG_ERROR, "device_set_scissor_rect (GL) failed");
}
