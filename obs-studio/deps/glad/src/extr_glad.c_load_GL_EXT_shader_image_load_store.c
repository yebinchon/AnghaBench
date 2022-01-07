
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMEMORYBARRIEREXTPROC ;
typedef scalar_t__ PFNGLBINDIMAGETEXTUREEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_shader_image_load_store ;
 scalar_t__ glad_glBindImageTextureEXT ;
 scalar_t__ glad_glMemoryBarrierEXT ;

__attribute__((used)) static void load_GL_EXT_shader_image_load_store(GLADloadproc load) {
 if(!GLAD_GL_EXT_shader_image_load_store) return;
 glad_glBindImageTextureEXT = (PFNGLBINDIMAGETEXTUREEXTPROC)load("glBindImageTextureEXT");
 glad_glMemoryBarrierEXT = (PFNGLMEMORYBARRIEREXTPROC)load("glMemoryBarrierEXT");
}
