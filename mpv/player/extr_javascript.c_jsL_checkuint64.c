
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;
typedef int js_State ;


 double UINT64_MAX ;
 int js_error (int *,char*,int) ;
 double js_tonumber (int *,int) ;

__attribute__((used)) static uint64_t jsL_checkuint64(js_State *J, int idx)
{
    double d = js_tonumber(J, idx);
    if (!(d >= 0 && d <= UINT64_MAX))
        js_error(J, "uint64 out of range at index %d", idx);
    return d;
}
