
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMINSAMPLESHADINGARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_sample_shading ;
 scalar_t__ glad_glMinSampleShadingARB ;

__attribute__((used)) static void load_GL_ARB_sample_shading(GLADloadproc load) {
 if(!GLAD_GL_ARB_sample_shading) return;
 glad_glMinSampleShadingARB = (PFNGLMINSAMPLESHADINGARBPROC)load("glMinSampleShadingARB");
}
