
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_framebuffer_multisample ;
 scalar_t__ glad_glRenderbufferStorageMultisampleEXT ;

__attribute__((used)) static void load_GL_EXT_framebuffer_multisample(GLADloadproc load) {
 if(!GLAD_GL_EXT_framebuffer_multisample) return;
 glad_glRenderbufferStorageMultisampleEXT = (PFNGLRENDERBUFFERSTORAGEMULTISAMPLEEXTPROC)load("glRenderbufferStorageMultisampleEXT");
}
