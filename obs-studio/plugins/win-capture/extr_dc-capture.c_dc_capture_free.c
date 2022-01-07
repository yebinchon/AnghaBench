
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_capture {int texture; int bmp; scalar_t__ hdc; int old_bmp; } ;


 int DeleteDC (scalar_t__) ;
 int DeleteObject (int ) ;
 int SelectObject (scalar_t__,int ) ;
 int gs_texture_destroy (int ) ;
 int memset (struct dc_capture*,int ,int) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

void dc_capture_free(struct dc_capture *capture)
{
 if (capture->hdc) {
  SelectObject(capture->hdc, capture->old_bmp);
  DeleteDC(capture->hdc);
  DeleteObject(capture->bmp);
 }

 obs_enter_graphics();
 gs_texture_destroy(capture->texture);
 obs_leave_graphics();

 memset(capture, 0, sizeof(struct dc_capture));
}
