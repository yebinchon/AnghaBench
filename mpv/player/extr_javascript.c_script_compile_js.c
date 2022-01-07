
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_loadstring (int *,int ,int ) ;
 int js_tostring (int *,int) ;

__attribute__((used)) static void script_compile_js(js_State *J)
{
    js_loadstring(J, js_tostring(J, 1), js_tostring(J, 2));
}
