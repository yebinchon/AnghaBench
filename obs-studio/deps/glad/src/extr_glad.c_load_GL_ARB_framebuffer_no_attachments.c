
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETFRAMEBUFFERPARAMETERIVPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERPARAMETERIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_framebuffer_no_attachments ;
 scalar_t__ glad_glFramebufferParameteri ;
 scalar_t__ glad_glGetFramebufferParameteriv ;

__attribute__((used)) static void load_GL_ARB_framebuffer_no_attachments(GLADloadproc load) {
 if(!GLAD_GL_ARB_framebuffer_no_attachments) return;
 glad_glFramebufferParameteri = (PFNGLFRAMEBUFFERPARAMETERIPROC)load("glFramebufferParameteri");
 glad_glGetFramebufferParameteriv = (PFNGLGETFRAMEBUFFERPARAMETERIVPROC)load("glGetFramebufferParameteriv");
}
