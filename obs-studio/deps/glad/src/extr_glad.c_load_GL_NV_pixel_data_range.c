
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPIXELDATARANGENVPROC ;
typedef scalar_t__ PFNGLFLUSHPIXELDATARANGENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_pixel_data_range ;
 scalar_t__ glad_glFlushPixelDataRangeNV ;
 scalar_t__ glad_glPixelDataRangeNV ;

__attribute__((used)) static void load_GL_NV_pixel_data_range(GLADloadproc load) {
 if(!GLAD_GL_NV_pixel_data_range) return;
 glad_glPixelDataRangeNV = (PFNGLPIXELDATARANGENVPROC)load("glPixelDataRangeNV");
 glad_glFlushPixelDataRangeNV = (PFNGLFLUSHPIXELDATARANGENVPROC)load("glFlushPixelDataRangeNV");
}
