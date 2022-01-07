
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_pushstring (int *,int ) ;
 int js_tostring (int *,int) ;
 int mp_path_join (void*,int ,int ) ;

__attribute__((used)) static void script_join_path(js_State *J, void *af)
{
    js_pushstring(J, mp_path_join(af, js_tostring(J, 1), js_tostring(J, 2)));
}
