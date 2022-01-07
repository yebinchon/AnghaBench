
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIXELFORMATDESCRIPTOR ;
typedef int HDC ;


 int GetLastError () ;
 int LOG_ERROR ;
 int SetPixelFormat (int ,int,int *) ;
 int blog (int ,char*,int ) ;

__attribute__((used)) static inline bool gl_setpixelformat(HDC hdc, int format,
         PIXELFORMATDESCRIPTOR *pfd)
{
 if (!SetPixelFormat(hdc, format, pfd)) {
  blog(LOG_ERROR, "SetPixelFormat failed, %lu", GetLastError());
  return 0;
 }

 return 1;
}
