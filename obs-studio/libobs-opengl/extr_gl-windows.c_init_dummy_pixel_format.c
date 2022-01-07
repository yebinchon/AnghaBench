
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pfd ;
struct TYPE_4__ {int nSize; int nVersion; int cColorBits; int cDepthBits; int cStencilBits; int dwFlags; int iLayerType; int iPixelType; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;


 int PFD_DOUBLEBUFFER ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_MAIN_PLANE ;
 int PFD_SUPPORT_OPENGL ;
 int PFD_TYPE_RGBA ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void init_dummy_pixel_format(PIXELFORMATDESCRIPTOR *pfd)
{
 memset(pfd, 0, sizeof(PIXELFORMATDESCRIPTOR));
 pfd->nSize = sizeof(pfd);
 pfd->nVersion = 1;
 pfd->iPixelType = PFD_TYPE_RGBA;
 pfd->cColorBits = 32;
 pfd->cDepthBits = 24;
 pfd->cStencilBits = 8;
 pfd->iLayerType = PFD_MAIN_PLANE;
 pfd->dwFlags = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL |
         PFD_DOUBLEBUFFER;
}
