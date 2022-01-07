
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int af_push_file (int *,char const*,int,void*) ;
 int js_endtry (int *) ;
 scalar_t__ js_try (int *) ;

__attribute__((used)) static int s_push_file(js_State *J, const char *fname, int limit, void *af)
{
    if (js_try(J))
        return 1;
    af_push_file(J, fname, limit, af);
    js_endtry(J);
    return 0;
}
