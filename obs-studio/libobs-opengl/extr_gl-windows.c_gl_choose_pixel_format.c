
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_init_data {int zsformat; int format; } ;
struct darray {int array; } ;
typedef int UINT ;
typedef int HDC ;
typedef int BOOL ;


 int GL_TRUE ;
 int GetLastError () ;
 int LOG_ERROR ;
 int WGL_ACCELERATION_ARB ;
 int WGL_COLOR_BITS_ARB ;
 int WGL_DEPTH_BITS_ARB ;
 int WGL_DOUBLE_BUFFER_ARB ;
 int WGL_DRAW_TO_WINDOW_ARB ;
 int WGL_FULL_ACCELERATION_ARB ;
 int WGL_PIXEL_TYPE_ARB ;
 int WGL_STENCIL_BITS_ARB ;
 int WGL_SUPPORT_OPENGL_ARB ;
 int WGL_TYPE_RGBA_ARB ;
 int add_attrib (struct darray*,int ,int) ;
 int blog (int ,char*,...) ;
 int darray_free (struct darray*) ;
 int darray_init (struct darray*) ;
 int get_color_format_bits (int ) ;
 int get_depth_format_bits (int ) ;
 int get_stencil_format_bits (int ) ;
 int wglChoosePixelFormatARB (int ,int ,int *,int,int*,int *) ;

__attribute__((used)) static int gl_choose_pixel_format(HDC hdc, const struct gs_init_data *info)
{
 struct darray attribs;
 int color_bits = get_color_format_bits(info->format);
 int depth_bits = get_depth_format_bits(info->zsformat);
 int stencil_bits = get_stencil_format_bits(info->zsformat);
 UINT num_formats;
 BOOL success;
 int format;

 if (!color_bits) {
  blog(LOG_ERROR, "gl_init_pixel_format: color format not "
    "supported");
  return 0;
 }

 darray_init(&attribs);
 add_attrib(&attribs, WGL_DRAW_TO_WINDOW_ARB, GL_TRUE);
 add_attrib(&attribs, WGL_SUPPORT_OPENGL_ARB, GL_TRUE);
 add_attrib(&attribs, WGL_ACCELERATION_ARB, WGL_FULL_ACCELERATION_ARB);
 add_attrib(&attribs, WGL_DOUBLE_BUFFER_ARB, GL_TRUE);
 add_attrib(&attribs, WGL_PIXEL_TYPE_ARB, WGL_TYPE_RGBA_ARB);
 add_attrib(&attribs, WGL_COLOR_BITS_ARB, color_bits);
 add_attrib(&attribs, WGL_DEPTH_BITS_ARB, depth_bits);
 add_attrib(&attribs, WGL_STENCIL_BITS_ARB, stencil_bits);
 add_attrib(&attribs, 0, 0);

 success = wglChoosePixelFormatARB(hdc, attribs.array, ((void*)0), 1, &format,
       &num_formats);
 if (!success || !num_formats) {
  blog(LOG_ERROR, "wglChoosePixelFormatARB failed, %lu",
       GetLastError());
  format = 0;
 }

 darray_free(&attribs);

 return format;
}
