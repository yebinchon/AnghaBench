
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 double INT_MAX ;
 double INT_MIN ;
 int js_error (int *,char*,int) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static int jsL_checkint(js_State *J, int idx)
{
    double d = js_tonumber(J, idx);
    if (!(d >= INT_MIN && d <= INT_MAX))
        js_error(J, "int out of range at index %d", idx);
    return d;
}
