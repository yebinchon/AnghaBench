
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int MPV_FORMAT_FLAG ;
 int jclient (int *) ;
 int js_toboolean (int *,int) ;
 int js_tostring (int *,int) ;
 int mpv_set_property (int ,int ,int ,int*) ;
 int push_status (int *,int) ;

__attribute__((used)) static void script_set_property_bool(js_State *J)
{
    int v = js_toboolean(J, 2);
    int e = mpv_set_property(jclient(J), js_tostring(J, 1), MPV_FORMAT_FLAG, &v);
    push_status(J, e);
}
