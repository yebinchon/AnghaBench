
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLITFRAMEBUFFEREXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_framebuffer_blit ;
 scalar_t__ glad_glBlitFramebufferEXT ;

__attribute__((used)) static void load_GL_EXT_framebuffer_blit(GLADloadproc load) {
 if(!GLAD_GL_EXT_framebuffer_blit) return;
 glad_glBlitFramebufferEXT = (PFNGLBLITFRAMEBUFFEREXTPROC)load("glBlitFramebufferEXT");
}
