
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXSTORAGE3DPROC ;
typedef scalar_t__ PFNGLTEXSTORAGE2DPROC ;
typedef scalar_t__ PFNGLTEXSTORAGE1DPROC ;
typedef scalar_t__ PFNGLMEMORYBARRIERPROC ;
typedef scalar_t__ PFNGLGETINTERNALFORMATIVPROC ;
typedef scalar_t__ PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC ;
typedef scalar_t__ PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC ;
typedef scalar_t__ PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC ;
typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC ;
typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC ;
typedef scalar_t__ PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC ;
typedef scalar_t__ PFNGLBINDIMAGETEXTUREPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_VERSION_4_2 ;
 scalar_t__ glad_glBindImageTexture ;
 scalar_t__ glad_glDrawArraysInstancedBaseInstance ;
 scalar_t__ glad_glDrawElementsInstancedBaseInstance ;
 scalar_t__ glad_glDrawElementsInstancedBaseVertexBaseInstance ;
 scalar_t__ glad_glDrawTransformFeedbackInstanced ;
 scalar_t__ glad_glDrawTransformFeedbackStreamInstanced ;
 scalar_t__ glad_glGetActiveAtomicCounterBufferiv ;
 scalar_t__ glad_glGetInternalformativ ;
 scalar_t__ glad_glMemoryBarrier ;
 scalar_t__ glad_glTexStorage1D ;
 scalar_t__ glad_glTexStorage2D ;
 scalar_t__ glad_glTexStorage3D ;

__attribute__((used)) static void load_GL_VERSION_4_2(GLADloadproc load) {
 if(!GLAD_GL_VERSION_4_2) return;
 glad_glDrawArraysInstancedBaseInstance = (PFNGLDRAWARRAYSINSTANCEDBASEINSTANCEPROC)load("glDrawArraysInstancedBaseInstance");
 glad_glDrawElementsInstancedBaseInstance = (PFNGLDRAWELEMENTSINSTANCEDBASEINSTANCEPROC)load("glDrawElementsInstancedBaseInstance");
 glad_glDrawElementsInstancedBaseVertexBaseInstance = (PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXBASEINSTANCEPROC)load("glDrawElementsInstancedBaseVertexBaseInstance");
 glad_glGetInternalformativ = (PFNGLGETINTERNALFORMATIVPROC)load("glGetInternalformativ");
 glad_glGetActiveAtomicCounterBufferiv = (PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC)load("glGetActiveAtomicCounterBufferiv");
 glad_glBindImageTexture = (PFNGLBINDIMAGETEXTUREPROC)load("glBindImageTexture");
 glad_glMemoryBarrier = (PFNGLMEMORYBARRIERPROC)load("glMemoryBarrier");
 glad_glTexStorage1D = (PFNGLTEXSTORAGE1DPROC)load("glTexStorage1D");
 glad_glTexStorage2D = (PFNGLTEXSTORAGE2DPROC)load("glTexStorage2D");
 glad_glTexStorage3D = (PFNGLTEXSTORAGE3DPROC)load("glTexStorage3D");
 glad_glDrawTransformFeedbackInstanced = (PFNGLDRAWTRANSFORMFEEDBACKINSTANCEDPROC)load("glDrawTransformFeedbackInstanced");
 glad_glDrawTransformFeedbackStreamInstanced = (PFNGLDRAWTRANSFORMFEEDBACKSTREAMINSTANCEDPROC)load("glDrawTransformFeedbackStreamInstanced");
}
