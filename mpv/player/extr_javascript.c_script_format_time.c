
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_error (int *,char*,char const*) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_pushstring (int *,char*) ;
 double js_tonumber (int *,int) ;
 char* js_tostring (int *,int) ;
 int mp_format_time_fmt (char const*,double) ;
 char* talloc_steal (void*,int ) ;

__attribute__((used)) static void script_format_time(js_State *J, void *af)
{
    double t = js_tonumber(J, 1);
    const char *fmt = js_isundefined(J, 2) ? "%H:%M:%S" : js_tostring(J, 2);
    char *r = talloc_steal(af, mp_format_time_fmt(fmt, t));
    if (!r)
        js_error(J, "Invalid time format string '%s'", fmt);
    js_pushstring(J, r);
}
