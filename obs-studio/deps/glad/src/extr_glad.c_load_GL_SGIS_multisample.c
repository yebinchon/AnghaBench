
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSAMPLEPATTERNSGISPROC ;
typedef scalar_t__ PFNGLSAMPLEMASKSGISPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIS_multisample ;
 scalar_t__ glad_glSampleMaskSGIS ;
 scalar_t__ glad_glSamplePatternSGIS ;

__attribute__((used)) static void load_GL_SGIS_multisample(GLADloadproc load) {
 if(!GLAD_GL_SGIS_multisample) return;
 glad_glSampleMaskSGIS = (PFNGLSAMPLEMASKSGISPROC)load("glSampleMaskSGIS");
 glad_glSamplePatternSGIS = (PFNGLSAMPLEPATTERNSGISPROC)load("glSamplePatternSGIS");
}
