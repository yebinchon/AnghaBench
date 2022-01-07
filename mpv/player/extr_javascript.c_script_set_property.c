
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jclient (int *) ;
 int js_tostring (int *,int) ;
 int mpv_set_property_string (int ,int ,int ) ;
 int push_status (int *,int) ;

__attribute__((used)) static void script_set_property(js_State *J)
{
    int e = mpv_set_property_string(jclient(J), js_tostring(J, 1),
                                                js_tostring(J, 2));
    push_status(J, e);
}
