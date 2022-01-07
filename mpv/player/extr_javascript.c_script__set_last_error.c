
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jctx (int *) ;
 char* js_tostring (int *,int) ;
 int set_last_error (int ,char const,char const*) ;

__attribute__((used)) static void script__set_last_error(js_State *J)
{
    const char *e = js_tostring(J, 1);
    set_last_error(jctx(J), e[0], e);
}
