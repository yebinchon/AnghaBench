
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_get_geometry_reply_t ;
typedef int xcb_get_geometry_cookie_t ;
typedef int xcb_generic_error_t ;
typedef int xcb_drawable_t ;
typedef int xcb_connection_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int free (int *) ;
 int xcb_get_geometry (int *,int ) ;
 int * xcb_get_geometry_reply (int *,int ,int **) ;

__attribute__((used)) static xcb_get_geometry_reply_t *get_window_geometry(xcb_connection_t *xcb_conn,
           xcb_drawable_t drawable)
{
 xcb_get_geometry_cookie_t cookie;
 xcb_generic_error_t *error;
 xcb_get_geometry_reply_t *reply;

 cookie = xcb_get_geometry(xcb_conn, drawable);
 reply = xcb_get_geometry_reply(xcb_conn, cookie, &error);

 if (error) {
  blog(LOG_ERROR, "Failed to fetch parent window geometry!");
  free(error);
  free(reply);
  return 0;
 }

 free(error);
 return reply;
}
