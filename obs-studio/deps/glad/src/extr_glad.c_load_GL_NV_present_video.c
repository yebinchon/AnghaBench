
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPRESENTFRAMEKEYEDNVPROC ;
typedef scalar_t__ PFNGLPRESENTFRAMEDUALFILLNVPROC ;
typedef scalar_t__ PFNGLGETVIDEOUIVNVPROC ;
typedef scalar_t__ PFNGLGETVIDEOUI64VNVPROC ;
typedef scalar_t__ PFNGLGETVIDEOIVNVPROC ;
typedef scalar_t__ PFNGLGETVIDEOI64VNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_present_video ;
 scalar_t__ glad_glGetVideoi64vNV ;
 scalar_t__ glad_glGetVideoivNV ;
 scalar_t__ glad_glGetVideoui64vNV ;
 scalar_t__ glad_glGetVideouivNV ;
 scalar_t__ glad_glPresentFrameDualFillNV ;
 scalar_t__ glad_glPresentFrameKeyedNV ;

__attribute__((used)) static void load_GL_NV_present_video(GLADloadproc load) {
 if(!GLAD_GL_NV_present_video) return;
 glad_glPresentFrameKeyedNV = (PFNGLPRESENTFRAMEKEYEDNVPROC)load("glPresentFrameKeyedNV");
 glad_glPresentFrameDualFillNV = (PFNGLPRESENTFRAMEDUALFILLNVPROC)load("glPresentFrameDualFillNV");
 glad_glGetVideoivNV = (PFNGLGETVIDEOIVNVPROC)load("glGetVideoivNV");
 glad_glGetVideouivNV = (PFNGLGETVIDEOUIVNVPROC)load("glGetVideouivNV");
 glad_glGetVideoi64vNV = (PFNGLGETVIDEOI64VNVPROC)load("glGetVideoi64vNV");
 glad_glGetVideoui64vNV = (PFNGLGETVIDEOUI64VNVPROC)load("glGetVideoui64vNV");
}
