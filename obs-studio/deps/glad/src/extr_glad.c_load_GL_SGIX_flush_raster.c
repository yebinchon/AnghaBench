
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFLUSHRASTERSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIX_flush_raster ;
 scalar_t__ glad_glFlushRasterSGIX ;

__attribute__((used)) static void load_GL_SGIX_flush_raster(GLADloadproc load) {
 if(!GLAD_GL_SGIX_flush_raster) return;
 glad_glFlushRasterSGIX = (PFNGLFLUSHRASTERSGIXPROC)load("glFlushRasterSGIX");
}
