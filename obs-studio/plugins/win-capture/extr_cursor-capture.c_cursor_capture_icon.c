
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct cursor_data {scalar_t__ last_cx; scalar_t__ last_cy; int texture; int y_hotspot; int x_hotspot; } ;
struct TYPE_4__ {int hbmMask; int hbmColor; int yHotspot; int xHotspot; } ;
typedef TYPE_1__ ICONINFO ;
typedef int HICON ;


 int DeleteObject (int ) ;
 int GetIconInfo (int ,TYPE_1__*) ;
 int bfree (int *) ;
 int * cursor_capture_icon_bitmap (TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int get_cached_texture (struct cursor_data*,scalar_t__,scalar_t__) ;
 int gs_texture_set_image (int ,int *,scalar_t__,int) ;

__attribute__((used)) static inline bool cursor_capture_icon(struct cursor_data *data, HICON icon)
{
 uint8_t *bitmap;
 uint32_t height;
 uint32_t width;
 ICONINFO ii;

 if (!icon) {
  return 0;
 }
 if (!GetIconInfo(icon, &ii)) {
  return 0;
 }

 bitmap = cursor_capture_icon_bitmap(&ii, &width, &height);
 if (bitmap) {
  if (data->last_cx != width || data->last_cy != height) {
   data->texture = get_cached_texture(data, width, height);
   data->last_cx = width;
   data->last_cy = height;
  }
  gs_texture_set_image(data->texture, bitmap, width * 4, 0);
  bfree(bitmap);

  data->x_hotspot = ii.xHotspot;
  data->y_hotspot = ii.yHotspot;
 }

 DeleteObject(ii.hbmColor);
 DeleteObject(ii.hbmMask);
 return !!data->texture;
}
