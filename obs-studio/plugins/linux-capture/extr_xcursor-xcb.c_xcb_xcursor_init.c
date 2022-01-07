
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_xfixes_query_version_cookie_t ;
typedef int xcb_xcursor_t ;
typedef int xcb_connection_t ;


 int XCB_XFIXES_MAJOR_VERSION ;
 int XCB_XFIXES_MINOR_VERSION ;
 int * bzalloc (int) ;
 int free (int ) ;
 int xcb_xfixes_query_version_reply (int *,int ,int *) ;
 int xcb_xfixes_query_version_unchecked (int *,int ,int ) ;

xcb_xcursor_t *xcb_xcursor_init(xcb_connection_t *xcb)
{
 xcb_xcursor_t *data = bzalloc(sizeof(xcb_xcursor_t));

 xcb_xfixes_query_version_cookie_t xfix_c;

 xfix_c = xcb_xfixes_query_version_unchecked(
  xcb, XCB_XFIXES_MAJOR_VERSION, XCB_XFIXES_MINOR_VERSION);
 free(xcb_xfixes_query_version_reply(xcb, xfix_c, ((void*)0)));

 return data;
}
