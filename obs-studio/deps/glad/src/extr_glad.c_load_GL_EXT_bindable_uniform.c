
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLUNIFORMBUFFEREXTPROC ;
typedef scalar_t__ PFNGLGETUNIFORMOFFSETEXTPROC ;
typedef scalar_t__ PFNGLGETUNIFORMBUFFERSIZEEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_bindable_uniform ;
 scalar_t__ glad_glGetUniformBufferSizeEXT ;
 scalar_t__ glad_glGetUniformOffsetEXT ;
 scalar_t__ glad_glUniformBufferEXT ;

__attribute__((used)) static void load_GL_EXT_bindable_uniform(GLADloadproc load) {
 if(!GLAD_GL_EXT_bindable_uniform) return;
 glad_glUniformBufferEXT = (PFNGLUNIFORMBUFFEREXTPROC)load("glUniformBufferEXT");
 glad_glGetUniformBufferSizeEXT = (PFNGLGETUNIFORMBUFFERSIZEEXTPROC)load("glGetUniformBufferSizeEXT");
 glad_glGetUniformOffsetEXT = (PFNGLGETUNIFORMOFFSETEXTPROC)load("glGetUniformOffsetEXT");
}
