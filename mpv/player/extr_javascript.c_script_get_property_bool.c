
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;
typedef int js_State ;


 int MPV_FORMAT_FLAG ;
 int * jclient (int *) ;
 int js_pushboolean (int *,int) ;
 int js_tostring (int *,int) ;
 int mpv_get_property (int *,int ,int ,int*) ;
 int pushed_error (int *,int,int) ;

__attribute__((used)) static void script_get_property_bool(js_State *J)
{
    int result;
    mpv_handle *h = jclient(J);
    int e = mpv_get_property(h, js_tostring(J, 1), MPV_FORMAT_FLAG, &result);
    if (!pushed_error(J, e, 2))
        js_pushboolean(J, result);
}
