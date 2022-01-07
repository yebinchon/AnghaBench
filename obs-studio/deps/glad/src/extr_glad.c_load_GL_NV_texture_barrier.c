
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTUREBARRIERNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_texture_barrier ;
 scalar_t__ glad_glTextureBarrierNV ;

__attribute__((used)) static void load_GL_NV_texture_barrier(GLADloadproc load) {
 if(!GLAD_GL_NV_texture_barrier) return;
 glad_glTextureBarrierNV = (PFNGLTEXTUREBARRIERNVPROC)load("glTextureBarrierNV");
}
