
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTURENORMALEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_texture_perturb_normal ;
 scalar_t__ glad_glTextureNormalEXT ;

__attribute__((used)) static void load_GL_EXT_texture_perturb_normal(GLADloadproc load) {
 if(!GLAD_GL_EXT_texture_perturb_normal) return;
 glad_glTextureNormalEXT = (PFNGLTEXTURENORMALEXTPROC)load("glTextureNormalEXT");
}
