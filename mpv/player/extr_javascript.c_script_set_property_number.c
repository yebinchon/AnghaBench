
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;
typedef int js_State ;


 int MPV_FORMAT_DOUBLE ;
 int * jclient (int *) ;
 double js_tonumber (int *,int) ;
 int js_tostring (int *,int) ;
 int mpv_set_property (int *,int ,int ,double*) ;
 int push_status (int *,int) ;

__attribute__((used)) static void script_set_property_number(js_State *J)
{
    double v = js_tonumber(J, 2);
    mpv_handle *h = jclient(J);
    int e = mpv_set_property(h, js_tostring(J, 1), MPV_FORMAT_DOUBLE, &v);
    push_status(J, e);
}
