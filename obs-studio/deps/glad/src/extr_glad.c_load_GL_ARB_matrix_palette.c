
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMATRIXINDEXUSVARBPROC ;
typedef scalar_t__ PFNGLMATRIXINDEXUIVARBPROC ;
typedef scalar_t__ PFNGLMATRIXINDEXUBVARBPROC ;
typedef scalar_t__ PFNGLMATRIXINDEXPOINTERARBPROC ;
typedef scalar_t__ PFNGLCURRENTPALETTEMATRIXARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_matrix_palette ;
 scalar_t__ glad_glCurrentPaletteMatrixARB ;
 scalar_t__ glad_glMatrixIndexPointerARB ;
 scalar_t__ glad_glMatrixIndexubvARB ;
 scalar_t__ glad_glMatrixIndexuivARB ;
 scalar_t__ glad_glMatrixIndexusvARB ;

__attribute__((used)) static void load_GL_ARB_matrix_palette(GLADloadproc load) {
 if(!GLAD_GL_ARB_matrix_palette) return;
 glad_glCurrentPaletteMatrixARB = (PFNGLCURRENTPALETTEMATRIXARBPROC)load("glCurrentPaletteMatrixARB");
 glad_glMatrixIndexubvARB = (PFNGLMATRIXINDEXUBVARBPROC)load("glMatrixIndexubvARB");
 glad_glMatrixIndexusvARB = (PFNGLMATRIXINDEXUSVARBPROC)load("glMatrixIndexusvARB");
 glad_glMatrixIndexuivARB = (PFNGLMATRIXINDEXUIVARBPROC)load("glMatrixIndexuivARB");
 glad_glMatrixIndexPointerARB = (PFNGLMATRIXINDEXPOINTERARBPROC)load("glMatrixIndexPointerARB");
}
