
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct dc_capture {int x; int y; int capture_cursor; int compatibility; int bmp; int hdc; int old_bmp; int bits; int valid; void* height; void* width; } ;
struct TYPE_4__ {int biSize; int biBitCount; int biPlanes; void* biHeight; void* biWidth; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; int member_0; } ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int CreateCompatibleDC (int *) ;
 int CreateDIBSection (int ,TYPE_2__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int SelectObject (int ,int ) ;
 int gs_gdi_texture_available () ;
 int init_textures (struct dc_capture*) ;
 int memset (struct dc_capture*,int ,int) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

void dc_capture_init(struct dc_capture *capture, int x, int y, uint32_t width,
       uint32_t height, bool cursor, bool compatibility)
{
 memset(capture, 0, sizeof(struct dc_capture));

 capture->x = x;
 capture->y = y;
 capture->width = width;
 capture->height = height;
 capture->capture_cursor = cursor;

 obs_enter_graphics();

 if (!gs_gdi_texture_available())
  compatibility = 1;

 capture->compatibility = compatibility;

 init_textures(capture);

 obs_leave_graphics();

 if (!capture->valid)
  return;

 if (compatibility) {
  BITMAPINFO bi = {0};
  BITMAPINFOHEADER *bih = &bi.bmiHeader;
  bih->biSize = sizeof(BITMAPINFOHEADER);
  bih->biBitCount = 32;
  bih->biWidth = width;
  bih->biHeight = height;
  bih->biPlanes = 1;

  capture->hdc = CreateCompatibleDC(((void*)0));
  capture->bmp =
   CreateDIBSection(capture->hdc, &bi, DIB_RGB_COLORS,
      (void **)&capture->bits, ((void*)0), 0);
  capture->old_bmp = SelectObject(capture->hdc, capture->bmp);
 }
}
