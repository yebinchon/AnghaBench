
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cy; int cx; int base_cy; int base_cx; int fbo; } ;
typedef int GLuint ;


 int GL_BACK ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DRAW_FRAMEBUFFER ;
 scalar_t__ GL_INVALID_OPERATION ;
 int GL_LINEAR ;
 int GL_TEXTURE_2D ;
 scalar_t__ _strcmpi (int ,char*) ;
 int darkest_dungeon_fix ;
 TYPE_1__ data ;
 int glBindFramebuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBlitFramebuffer (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int glDrawBuffer (int ) ;
 int glFramebufferTexture2D (int ,int ,int ,int ,int ) ;
 scalar_t__ glGetError () ;
 int glReadBuffer (int ) ;
 scalar_t__ gl_error (char*,char*) ;
 int process_name ;

__attribute__((used)) static void gl_copy_backbuffer(GLuint dst)
{
 glBindFramebuffer(GL_DRAW_FRAMEBUFFER, data.fbo);
 if (gl_error("gl_copy_backbuffer", "failed to bind FBO")) {
  return;
 }

 glBindTexture(GL_TEXTURE_2D, dst);
 if (gl_error("gl_copy_backbuffer", "failed to bind texture")) {
  return;
 }

 glFramebufferTexture2D(GL_DRAW_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
          GL_TEXTURE_2D, dst, 0);
 if (gl_error("gl_copy_backbuffer", "failed to set frame buffer")) {
  return;
 }

 glReadBuffer(GL_BACK);


 darkest_dungeon_fix = glGetError() == GL_INVALID_OPERATION &&
         _strcmpi(process_name, "Darkest.exe") == 0;

 glDrawBuffer(GL_COLOR_ATTACHMENT0);
 if (gl_error("gl_copy_backbuffer", "failed to set draw buffer")) {
  return;
 }

 glBlitFramebuffer(0, 0, data.base_cx, data.base_cy, 0, 0, data.cx,
     data.cy, GL_COLOR_BUFFER_BIT, GL_LINEAR);
 gl_error("gl_copy_backbuffer", "failed to blit");
}
