
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_error (int *,char*,char const*,char const*) ;
 scalar_t__ js_isundefined (int *,int) ;
 char const* js_tostring (int *,int) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int checkopt(js_State *J, int idx, const char *def, const char *opts[],
                    const char *desc)
{
    const char *opt = js_isundefined(J, idx) ? def : js_tostring(J, idx);
    for (int i = 0; opts[i]; i++) {
        if (strcmp(opt, opts[i]) == 0)
            return i;
    }
    js_error(J, "Invalid %s '%s'", desc, opt);
}
