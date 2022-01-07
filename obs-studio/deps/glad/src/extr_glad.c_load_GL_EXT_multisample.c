
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSAMPLEPATTERNEXTPROC ;
typedef scalar_t__ PFNGLSAMPLEMASKEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_multisample ;
 scalar_t__ glad_glSampleMaskEXT ;
 scalar_t__ glad_glSamplePatternEXT ;

__attribute__((used)) static void load_GL_EXT_multisample(GLADloadproc load) {
 if(!GLAD_GL_EXT_multisample) return;
 glad_glSampleMaskEXT = (PFNGLSAMPLEMASKEXTPROC)load("glSampleMaskEXT");
 glad_glSamplePatternEXT = (PFNGLSAMPLEPATTERNEXTPROC)load("glSamplePatternEXT");
}
