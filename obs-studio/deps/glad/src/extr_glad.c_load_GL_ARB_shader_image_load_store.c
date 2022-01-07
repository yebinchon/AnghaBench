
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMEMORYBARRIERPROC ;
typedef scalar_t__ PFNGLBINDIMAGETEXTUREPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_shader_image_load_store ;
 scalar_t__ glad_glBindImageTexture ;
 scalar_t__ glad_glMemoryBarrier ;

__attribute__((used)) static void load_GL_ARB_shader_image_load_store(GLADloadproc load) {
 if(!GLAD_GL_ARB_shader_image_load_store) return;
 glad_glBindImageTexture = (PFNGLBINDIMAGETEXTUREPROC)load("glBindImageTexture");
 glad_glMemoryBarrier = (PFNGLMEMORYBARRIERPROC)load("glMemoryBarrier");
}
