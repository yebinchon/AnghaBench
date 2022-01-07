
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int af_CFunction ;


 int JS_DONTCONF ;
 int JS_DONTENUM ;
 int JS_READONLY ;
 int js_defproperty (int *,int,char*,int) ;
 int js_newcfunction (int *,int ,char const*,int) ;
 int js_newuserdata (int *,char*,int ,int *) ;
 int js_pushnull (int *) ;
 int script__autofree ;

__attribute__((used)) static void af_newcfunction(js_State *J, af_CFunction fn, const char *name,
                            int length)
{
    js_newcfunction(J, script__autofree, name, length);
    js_pushnull(J);
    js_newuserdata(J, "af_fn", fn, ((void*)0));
    js_defproperty(J, -2, "af_", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
}
