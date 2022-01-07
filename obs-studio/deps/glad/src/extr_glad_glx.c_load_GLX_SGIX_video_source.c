
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXDESTROYGLXVIDEOSOURCESGIXPROC ;
typedef scalar_t__ PFNGLXCREATEGLXVIDEOSOURCESGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_video_source ;
 scalar_t__ glad_glXCreateGLXVideoSourceSGIX ;
 scalar_t__ glad_glXDestroyGLXVideoSourceSGIX ;

__attribute__((used)) static void load_GLX_SGIX_video_source(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_video_source) return;




 (void)load;

}
