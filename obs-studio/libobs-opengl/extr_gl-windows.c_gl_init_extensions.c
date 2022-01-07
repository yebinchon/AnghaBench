
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int GLAD_WGL_ARB_create_context ;
 int GLAD_WGL_ARB_create_context_profile ;
 int GLAD_WGL_ARB_pixel_format ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int gladLoadWGL (int ) ;
 int required_extension_error (char*) ;

__attribute__((used)) static bool gl_init_extensions(HDC hdc)
{
 if (!gladLoadWGL(hdc)) {
  blog(LOG_ERROR, "Failed to load WGL entry functions.");
  return 0;
 }

 if (!GLAD_WGL_ARB_pixel_format) {
  required_extension_error("ARB_pixel_format");
  return 0;
 }

 if (!GLAD_WGL_ARB_create_context) {
  required_extension_error("ARB_create_context");
  return 0;
 }

 if (!GLAD_WGL_ARB_create_context_profile) {
  required_extension_error("ARB_create_context_profile");
  return 0;
 }

 return 1;
}
