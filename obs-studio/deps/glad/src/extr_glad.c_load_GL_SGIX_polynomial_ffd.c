
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC ;
typedef scalar_t__ PFNGLDEFORMSGIXPROC ;
typedef scalar_t__ PFNGLDEFORMATIONMAP3FSGIXPROC ;
typedef scalar_t__ PFNGLDEFORMATIONMAP3DSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIX_polynomial_ffd ;
 scalar_t__ glad_glDeformSGIX ;
 scalar_t__ glad_glDeformationMap3dSGIX ;
 scalar_t__ glad_glDeformationMap3fSGIX ;
 scalar_t__ glad_glLoadIdentityDeformationMapSGIX ;

__attribute__((used)) static void load_GL_SGIX_polynomial_ffd(GLADloadproc load) {
 if(!GLAD_GL_SGIX_polynomial_ffd) return;
 glad_glDeformationMap3dSGIX = (PFNGLDEFORMATIONMAP3DSGIXPROC)load("glDeformationMap3dSGIX");
 glad_glDeformationMap3fSGIX = (PFNGLDEFORMATIONMAP3FSGIXPROC)load("glDeformationMap3fSGIX");
 glad_glDeformSGIX = (PFNGLDEFORMSGIXPROC)load("glDeformSGIX");
 glad_glLoadIdentityDeformationMapSGIX = (PFNGLLOADIDENTITYDEFORMATIONMAPSGIXPROC)load("glLoadIdentityDeformationMapSGIX");
}
