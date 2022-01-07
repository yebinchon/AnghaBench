
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int MPV_FORMAT_DOUBLE ;
 int jclient (int *) ;
 int js_pushnumber (int *,double) ;
 char* js_tostring (int *,int) ;
 int mpv_get_property (int ,char const*,int ,double*) ;
 int pushed_error (int *,int,int) ;

__attribute__((used)) static void script_get_property_number(js_State *J)
{
    double result;
    const char *name = js_tostring(J, 1);
    int e = mpv_get_property(jclient(J), name, MPV_FORMAT_DOUBLE, &result);
    if (!pushed_error(J, e, 2))
        js_pushnumber(J, result);
}
