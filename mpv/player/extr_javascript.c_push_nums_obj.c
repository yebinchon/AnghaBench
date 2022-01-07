
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_newobject (int *) ;
 int js_pushnumber (int *,double const) ;
 int js_setproperty (int *,int,char const* const) ;

__attribute__((used)) static void push_nums_obj(js_State *J, const char * const names[],
                          const double vals[])
{
    js_newobject(J);
    for (int i = 0; names[i]; i++) {
        js_pushnumber(J, vals[i]);
        js_setproperty(J, -2, names[i]);
    }
}
