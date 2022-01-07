
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;
typedef int js_State ;


 int MPV_FORMAT_OSD_STRING ;
 int add_af_mpv_alloc (void*,char*) ;
 int * jclient (int *) ;
 int js_pushstring (int *,char*) ;
 char* js_tostring (int *,int) ;
 int mpv_get_property (int *,char const*,int ,char**) ;
 int pushed_error (int *,int,int) ;

__attribute__((used)) static void script_get_property_osd(js_State *J, void *af)
{
    const char *name = js_tostring(J, 1);
    mpv_handle *h = jclient(J);
    char *res = ((void*)0);
    int e = mpv_get_property(h, name, MPV_FORMAT_OSD_STRING, &res);
    if (e >= 0)
        add_af_mpv_alloc(af, res);
    if (!pushed_error(J, e, 2))
        js_pushstring(J, res);
}
