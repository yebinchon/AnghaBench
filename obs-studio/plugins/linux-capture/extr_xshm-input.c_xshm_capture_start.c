
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xshm_data {char* server; int use_randr; int use_xinerama; int y_org; int x_org; int cursor; int xcb; int xshm; int height; int width; scalar_t__ advanced; } ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 scalar_t__ randr_is_active (int ) ;
 int xcb_connect (char const*,int *) ;
 scalar_t__ xcb_connection_has_error (int ) ;
 int xcb_xcursor_init (int ) ;
 int xcb_xcursor_offset (int ,int ,int ) ;
 scalar_t__ xinerama_is_active (int ) ;
 int xshm_capture_stop (struct xshm_data*) ;
 int xshm_check_extensions (int ) ;
 int xshm_resize_texture (struct xshm_data*) ;
 scalar_t__ xshm_update_geometry (struct xshm_data*) ;
 int xshm_xcb_attach (int ,int ,int ) ;

__attribute__((used)) static void xshm_capture_start(struct xshm_data *data)
{
 const char *server = (data->advanced && *data->server) ? data->server
              : ((void*)0);

 data->xcb = xcb_connect(server, ((void*)0));
 if (!data->xcb || xcb_connection_has_error(data->xcb)) {
  blog(LOG_ERROR, "Unable to open X display !");
  goto fail;
 }

 if (!xshm_check_extensions(data->xcb))
  goto fail;

 data->use_randr = randr_is_active(data->xcb) ? 1 : 0;
 data->use_xinerama = xinerama_is_active(data->xcb) ? 1 : 0;

 if (xshm_update_geometry(data) < 0) {
  blog(LOG_ERROR, "failed to update geometry !");
  goto fail;
 }

 data->xshm = xshm_xcb_attach(data->xcb, data->width, data->height);
 if (!data->xshm) {
  blog(LOG_ERROR, "failed to attach shm !");
  goto fail;
 }

 data->cursor = xcb_xcursor_init(data->xcb);
 xcb_xcursor_offset(data->cursor, data->x_org, data->y_org);

 obs_enter_graphics();

 xshm_resize_texture(data);

 obs_leave_graphics();

 return;
fail:
 xshm_capture_stop(data);
}
