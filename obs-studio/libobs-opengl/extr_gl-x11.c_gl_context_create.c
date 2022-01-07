
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_platform {int pbuffer; int * display; scalar_t__ context; } ;
typedef int GLXFBConfig ;
typedef scalar_t__ GLXContext ;
typedef int Display ;


 int DefaultScreen (int *) ;
 int GLAD_GLX_ARB_create_context ;
 int LOG_ERROR ;
 int XFree (int *) ;
 int XSync (int *,int) ;
 int blog (int ,char*) ;
 int ctx_attribs ;
 int ctx_pbuffer_attribs ;
 int ctx_visual_attribs ;
 int * glXChooseFBConfig (int *,int ,int ,int*) ;
 scalar_t__ glXCreateContextAttribsARB (int *,int ,int *,int,int ) ;
 int glXCreatePbuffer (int *,int ,int ) ;

__attribute__((used)) static bool gl_context_create(struct gl_platform *plat)
{
 Display *display = plat->display;
 int frame_buf_config_count = 0;
 GLXFBConfig *config = ((void*)0);
 GLXContext context;
 bool success = 0;

 if (!GLAD_GLX_ARB_create_context) {
  blog(LOG_ERROR, "ARB_GLX_create_context not supported!");
  return 0;
 }

 config = glXChooseFBConfig(display, DefaultScreen(display),
       ctx_visual_attribs, &frame_buf_config_count);
 if (!config) {
  blog(LOG_ERROR, "Failed to create OpenGL frame buffer config");
  return 0;
 }

 context = glXCreateContextAttribsARB(display, config[0], ((void*)0), 1,
          ctx_attribs);
 if (!context) {
  blog(LOG_ERROR, "Failed to create OpenGL context.");
  goto error;
 }

 plat->context = context;
 plat->display = display;

 plat->pbuffer =
  glXCreatePbuffer(display, config[0], ctx_pbuffer_attribs);
 if (!plat->pbuffer) {
  blog(LOG_ERROR, "Failed to create OpenGL pbuffer");
  goto error;
 }

 success = 1;

error:
 XFree(config);
 XSync(display, 0);
 return success;
}
