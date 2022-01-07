
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTUREVIEWPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_texture_view ;
 scalar_t__ glad_glTextureView ;

__attribute__((used)) static void load_GL_ARB_texture_view(GLADloadproc load) {
 if(!GLAD_GL_ARB_texture_view) return;
 glad_glTextureView = (PFNGLTEXTUREVIEWPROC)load("glTextureView");
}
