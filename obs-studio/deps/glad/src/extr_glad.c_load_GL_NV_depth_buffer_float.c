
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDEPTHRANGEDNVPROC ;
typedef scalar_t__ PFNGLDEPTHBOUNDSDNVPROC ;
typedef scalar_t__ PFNGLCLEARDEPTHDNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_depth_buffer_float ;
 scalar_t__ glad_glClearDepthdNV ;
 scalar_t__ glad_glDepthBoundsdNV ;
 scalar_t__ glad_glDepthRangedNV ;

__attribute__((used)) static void load_GL_NV_depth_buffer_float(GLADloadproc load) {
 if(!GLAD_GL_NV_depth_buffer_float) return;
 glad_glDepthRangedNV = (PFNGLDEPTHRANGEDNVPROC)load("glDepthRangedNV");
 glad_glClearDepthdNV = (PFNGLCLEARDEPTHDNVPROC)load("glClearDepthdNV");
 glad_glDepthBoundsdNV = (PFNGLDEPTHBOUNDSDNVPROC)load("glDepthBoundsdNV");
}
