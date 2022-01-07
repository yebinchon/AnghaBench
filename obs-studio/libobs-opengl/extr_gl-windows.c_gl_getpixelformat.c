
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_init_data {int dummy; } ;
typedef int PIXELFORMATDESCRIPTOR ;
typedef int HDC ;


 int DescribePixelFormat (int ,int,int,int *) ;
 int GetLastError () ;
 int LOG_ERROR ;
 int blog (int ,char*,int ) ;
 int gl_choose_pixel_format (int ,struct gs_init_data const*) ;

__attribute__((used)) static inline bool gl_getpixelformat(HDC hdc, const struct gs_init_data *info,
         int *format, PIXELFORMATDESCRIPTOR *pfd)
{
 if (!format)
  return 0;

 *format = gl_choose_pixel_format(hdc, info);

 if (!DescribePixelFormat(hdc, *format, sizeof(*pfd), pfd)) {
  blog(LOG_ERROR, "DescribePixelFormat failed, %lu",
       GetLastError());
  return 0;
 }

 return 1;
}
