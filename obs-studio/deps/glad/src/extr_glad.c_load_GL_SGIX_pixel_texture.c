
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPIXELTEXGENSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIX_pixel_texture ;
 scalar_t__ glad_glPixelTexGenSGIX ;

__attribute__((used)) static void load_GL_SGIX_pixel_texture(GLADloadproc load) {
 if(!GLAD_GL_SGIX_pixel_texture) return;
 glad_glPixelTexGenSGIX = (PFNGLPIXELTEXGENSGIXPROC)load("glPixelTexGenSGIX");
}
