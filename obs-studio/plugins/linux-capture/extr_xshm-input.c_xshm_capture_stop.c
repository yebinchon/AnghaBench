
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xshm_data {int * server; int * xcb; int * xshm; int * cursor; int * texture; } ;


 int bfree (int *) ;
 int gs_texture_destroy (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;
 int xcb_disconnect (int *) ;
 int xcb_xcursor_destroy (int *) ;
 int xshm_xcb_detach (int *) ;

__attribute__((used)) static void xshm_capture_stop(struct xshm_data *data)
{
 obs_enter_graphics();

 if (data->texture) {
  gs_texture_destroy(data->texture);
  data->texture = ((void*)0);
 }
 if (data->cursor) {
  xcb_xcursor_destroy(data->cursor);
  data->cursor = ((void*)0);
 }

 obs_leave_graphics();

 if (data->xshm) {
  xshm_xcb_detach(data->xshm);
  data->xshm = ((void*)0);
 }

 if (data->xcb) {
  xcb_disconnect(data->xcb);
  data->xcb = ((void*)0);
 }

 if (data->server) {
  bfree(data->server);
  data->server = ((void*)0);
 }
}
