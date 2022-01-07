
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXRENDERBUFFERNVPROC ;
typedef scalar_t__ PFNGLSAMPLEMASKINDEXEDNVPROC ;
typedef scalar_t__ PFNGLGETMULTISAMPLEFVNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_explicit_multisample ;
 scalar_t__ glad_glGetMultisamplefvNV ;
 scalar_t__ glad_glSampleMaskIndexedNV ;
 scalar_t__ glad_glTexRenderbufferNV ;

__attribute__((used)) static void load_GL_NV_explicit_multisample(GLADloadproc load) {
 if(!GLAD_GL_NV_explicit_multisample) return;
 glad_glGetMultisamplefvNV = (PFNGLGETMULTISAMPLEFVNVPROC)load("glGetMultisamplefvNV");
 glad_glSampleMaskIndexedNV = (PFNGLSAMPLEMASKINDEXEDNVPROC)load("glSampleMaskIndexedNV");
 glad_glTexRenderbufferNV = (PFNGLTEXRENDERBUFFERNVPROC)load("glTexRenderbufferNV");
}
