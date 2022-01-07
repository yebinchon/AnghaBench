
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int af_CFunction ;


 int js_currentfunction (int *) ;
 int js_getproperty (int *,int,char*) ;
 int js_pop (int *,int) ;
 int js_throw (int *) ;
 int js_touserdata (int *,int,char*) ;
 int s_run_af_jsc (int *,int ,void*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

__attribute__((used)) static void script__autofree(js_State *J)
{

    js_currentfunction(J);
    js_getproperty(J, -1, "af_");
    af_CFunction fn = (af_CFunction)js_touserdata(J, -1, "af_fn");
    js_pop(J, 2);

    void *af = talloc_new(((void*)0));
    int r = s_run_af_jsc(J, fn, af);
    talloc_free(af);
    if (r)
        js_throw(J);
}
