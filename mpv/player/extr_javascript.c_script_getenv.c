
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 char* getenv (int ) ;
 int js_pushstring (int *,char const*) ;
 int js_pushundefined (int *) ;
 int js_tostring (int *,int) ;

__attribute__((used)) static void script_getenv(js_State *J)
{
    const char *v = getenv(js_tostring(J, 1));
    if (v) {
        js_pushstring(J, v);
    } else {
        js_pushundefined(J);
    }
}
