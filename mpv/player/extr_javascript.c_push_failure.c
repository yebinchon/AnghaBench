
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jctx (int *) ;
 int js_pushundefined (int *) ;
 int set_last_error (int ,int,char const*) ;

__attribute__((used)) static void push_failure(js_State *J, const char *str)
{
    set_last_error(jctx(J), 1, str);
    js_pushundefined(J);
}
