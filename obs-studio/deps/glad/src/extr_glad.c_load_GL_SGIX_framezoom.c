
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFRAMEZOOMSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIX_framezoom ;
 scalar_t__ glad_glFrameZoomSGIX ;

__attribute__((used)) static void load_GL_SGIX_framezoom(GLADloadproc load) {
 if(!GLAD_GL_SGIX_framezoom) return;
 glad_glFrameZoomSGIX = (PFNGLFRAMEZOOMSGIXPROC)load("glFrameZoomSGIX");
}
