
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_3__ {int len; int start; } ;
typedef TYPE_1__ bstr ;


 int js_newarray (int *) ;
 int js_pushlstring (int *,int ,int ) ;
 int js_pushstring (int *,int ) ;
 int js_setindex (int *,int,int) ;
 char* js_tostring (int *,int) ;
 int mp_basename (char const*) ;
 TYPE_1__ mp_dirname (char const*) ;

__attribute__((used)) static void script_split_path(js_State *J)
{
    const char *p = js_tostring(J, 1);
    bstr fname = mp_dirname(p);
    js_newarray(J);
    js_pushlstring(J, fname.start, fname.len);
    js_setindex(J, -2, 0);
    js_pushstring(J, mp_basename(p));
    js_setindex(J, -2, 1);
}
