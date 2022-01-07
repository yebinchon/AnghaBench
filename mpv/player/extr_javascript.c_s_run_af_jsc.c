
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int (* af_CFunction ) (int *,void*) ;


 int js_endtry (int *) ;
 scalar_t__ js_try (int *) ;

__attribute__((used)) static int s_run_af_jsc(js_State *J, af_CFunction fn, void *af)
{
    if (js_try(J))
        return 1;
    fn(J, af);
    js_endtry(J);
    return 0;
}
