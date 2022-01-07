
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSAMPLECOVERAGEARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_multisample ;
 scalar_t__ glad_glSampleCoverageARB ;

__attribute__((used)) static void load_GL_ARB_multisample(GLADloadproc load) {
 if(!GLAD_GL_ARB_multisample) return;
 glad_glSampleCoverageARB = (PFNGLSAMPLECOVERAGEARBPROC)load("glSampleCoverageARB");
}
