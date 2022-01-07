
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXBUMPPARAMETERIVATIPROC ;
typedef scalar_t__ PFNGLTEXBUMPPARAMETERFVATIPROC ;
typedef scalar_t__ PFNGLGETTEXBUMPPARAMETERIVATIPROC ;
typedef scalar_t__ PFNGLGETTEXBUMPPARAMETERFVATIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ATI_envmap_bumpmap ;
 scalar_t__ glad_glGetTexBumpParameterfvATI ;
 scalar_t__ glad_glGetTexBumpParameterivATI ;
 scalar_t__ glad_glTexBumpParameterfvATI ;
 scalar_t__ glad_glTexBumpParameterivATI ;

__attribute__((used)) static void load_GL_ATI_envmap_bumpmap(GLADloadproc load) {
 if(!GLAD_GL_ATI_envmap_bumpmap) return;
 glad_glTexBumpParameterivATI = (PFNGLTEXBUMPPARAMETERIVATIPROC)load("glTexBumpParameterivATI");
 glad_glTexBumpParameterfvATI = (PFNGLTEXBUMPPARAMETERFVATIPROC)load("glTexBumpParameterfvATI");
 glad_glGetTexBumpParameterivATI = (PFNGLGETTEXBUMPPARAMETERIVATIPROC)load("glGetTexBumpParameterivATI");
 glad_glGetTexBumpParameterfvATI = (PFNGLGETTEXBUMPPARAMETERFVATIPROC)load("glGetTexBumpParameterfvATI");
}
