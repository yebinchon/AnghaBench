
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_init_data {int dummy; } ;
struct gl_windowinfo {int hdc; } ;
typedef int PIXELFORMATDESCRIPTOR ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int gl_getpixelformat (int ,struct gs_init_data const*,int*,int *) ;
 int gl_setpixelformat (int ,int,int *) ;
 struct gl_windowinfo* gl_windowinfo_bare (struct gs_init_data const*) ;
 int gl_windowinfo_destroy (struct gl_windowinfo*) ;

struct gl_windowinfo *gl_windowinfo_create(const struct gs_init_data *info)
{
 struct gl_windowinfo *wi = gl_windowinfo_bare(info);
 PIXELFORMATDESCRIPTOR pfd;
 int pixel_format;

 if (!wi)
  return ((void*)0);

 if (!gl_getpixelformat(wi->hdc, info, &pixel_format, &pfd))
  goto fail;
 if (!gl_setpixelformat(wi->hdc, pixel_format, &pfd))
  goto fail;

 return wi;

fail:
 blog(LOG_ERROR, "gl_windowinfo_create failed");
 gl_windowinfo_destroy(wi);
 return ((void*)0);
}
