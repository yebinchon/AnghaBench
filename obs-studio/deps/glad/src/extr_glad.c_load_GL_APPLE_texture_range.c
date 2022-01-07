
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTURERANGEAPPLEPROC ;
typedef scalar_t__ PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_APPLE_texture_range ;
 scalar_t__ glad_glGetTexParameterPointervAPPLE ;
 scalar_t__ glad_glTextureRangeAPPLE ;

__attribute__((used)) static void load_GL_APPLE_texture_range(GLADloadproc load) {
 if(!GLAD_GL_APPLE_texture_range) return;
 glad_glTextureRangeAPPLE = (PFNGLTEXTURERANGEAPPLEPROC)load("glTextureRangeAPPLE");
 glad_glGetTexParameterPointervAPPLE = (PFNGLGETTEXPARAMETERPOINTERVAPPLEPROC)load("glGetTexParameterPointervAPPLE");
}
