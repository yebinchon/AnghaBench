
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_xfixes_get_cursor_image_reply_t ;
typedef int xcb_xfixes_get_cursor_image_cookie_t ;
typedef int xcb_shm_get_image_reply_t ;
typedef int xcb_shm_get_image_cookie_t ;
struct TYPE_6__ {int width; int cursor; TYPE_2__* xshm; int texture; int xcb; int height; int y_org; int x_org; TYPE_1__* xcb_screen; int source; } ;
struct TYPE_5__ {scalar_t__ data; int seg; } ;
struct TYPE_4__ {int root; } ;


 int UNUSED_PARAMETER (float) ;
 int XCB_IMAGE_FORMAT_Z_PIXMAP ;
 int XSHM_DATA (void*) ;
 TYPE_3__* data ;
 int free (int *) ;
 int gs_texture_set_image (int ,void*,int,int) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int obs_source_showing (int ) ;
 int * xcb_shm_get_image_reply (int ,int ,int *) ;
 int xcb_shm_get_image_unchecked (int ,int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 int xcb_xcursor_update (int ,int *) ;
 int * xcb_xfixes_get_cursor_image_reply (int ,int ,int *) ;
 int xcb_xfixes_get_cursor_image_unchecked (int ) ;

__attribute__((used)) static void xshm_video_tick(void *vptr, float seconds)
{
 UNUSED_PARAMETER(seconds);
 XSHM_DATA(vptr);

 if (!data->texture)
  return;
 if (!obs_source_showing(data->source))
  return;

 xcb_shm_get_image_cookie_t img_c;
 xcb_shm_get_image_reply_t *img_r;
 xcb_xfixes_get_cursor_image_cookie_t cur_c;
 xcb_xfixes_get_cursor_image_reply_t *cur_r;

 img_c = xcb_shm_get_image_unchecked(data->xcb, data->xcb_screen->root,
         data->x_org, data->y_org,
         data->width, data->height, ~0,
         XCB_IMAGE_FORMAT_Z_PIXMAP,
         data->xshm->seg, 0);
 cur_c = xcb_xfixes_get_cursor_image_unchecked(data->xcb);

 img_r = xcb_shm_get_image_reply(data->xcb, img_c, ((void*)0));
 cur_r = xcb_xfixes_get_cursor_image_reply(data->xcb, cur_c, ((void*)0));

 if (!img_r)
  goto exit;

 obs_enter_graphics();

 gs_texture_set_image(data->texture, (void *)data->xshm->data,
        data->width * 4, 0);
 xcb_xcursor_update(data->cursor, cur_r);

 obs_leave_graphics();

exit:
 free(img_r);
 free(cur_r);
}
