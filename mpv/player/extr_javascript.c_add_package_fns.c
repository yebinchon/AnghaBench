
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_entry {char const* name; int length; int afc_fn; scalar_t__ jsc_fn; } ;
typedef int js_State ;


 int af_newcfunction (int *,int ,char const*,int ) ;
 int js_newcfunction (int *,scalar_t__,char const*,int ) ;
 int js_newobject (int *) ;
 int js_setproperty (int *,int,char const*) ;

__attribute__((used)) static void add_package_fns(js_State *J, const char *module,
                            const struct fn_entry *e)
{
    js_newobject(J);
    for (int n = 0; e[n].name; n++) {
        if (e[n].jsc_fn) {
            js_newcfunction(J, e[n].jsc_fn, e[n].name, e[n].length);
        } else {
            af_newcfunction(J, e[n].afc_fn, e[n].name, e[n].length);
        }
        js_setproperty(J, -2, e[n].name);
    }
    js_setproperty(J, -2, module);
}
