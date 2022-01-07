
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMVERTEXLIMITNVPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTUREEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_geometry_program4 ;
 scalar_t__ glad_glFramebufferTextureEXT ;
 scalar_t__ glad_glFramebufferTextureFaceEXT ;
 scalar_t__ glad_glFramebufferTextureLayerEXT ;
 scalar_t__ glad_glProgramVertexLimitNV ;

__attribute__((used)) static void load_GL_NV_geometry_program4(GLADloadproc load) {
 if(!GLAD_GL_NV_geometry_program4) return;
 glad_glProgramVertexLimitNV = (PFNGLPROGRAMVERTEXLIMITNVPROC)load("glProgramVertexLimitNV");
 glad_glFramebufferTextureEXT = (PFNGLFRAMEBUFFERTEXTUREEXTPROC)load("glFramebufferTextureEXT");
 glad_glFramebufferTextureLayerEXT = (PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC)load("glFramebufferTextureLayerEXT");
 glad_glFramebufferTextureFaceEXT = (PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC)load("glFramebufferTextureFaceEXT");
}
