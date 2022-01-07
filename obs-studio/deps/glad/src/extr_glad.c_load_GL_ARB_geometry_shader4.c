
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMPARAMETERIARBPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTURELAYERARBPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTUREFACEARBPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTUREARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_geometry_shader4 ;
 scalar_t__ glad_glFramebufferTextureARB ;
 scalar_t__ glad_glFramebufferTextureFaceARB ;
 scalar_t__ glad_glFramebufferTextureLayerARB ;
 scalar_t__ glad_glProgramParameteriARB ;

__attribute__((used)) static void load_GL_ARB_geometry_shader4(GLADloadproc load) {
 if(!GLAD_GL_ARB_geometry_shader4) return;
 glad_glProgramParameteriARB = (PFNGLPROGRAMPARAMETERIARBPROC)load("glProgramParameteriARB");
 glad_glFramebufferTextureARB = (PFNGLFRAMEBUFFERTEXTUREARBPROC)load("glFramebufferTextureARB");
 glad_glFramebufferTextureLayerARB = (PFNGLFRAMEBUFFERTEXTURELAYERARBPROC)load("glFramebufferTextureLayerARB");
 glad_glFramebufferTextureFaceARB = (PFNGLFRAMEBUFFERTEXTUREFACEARBPROC)load("glFramebufferTextureFaceARB");
}
