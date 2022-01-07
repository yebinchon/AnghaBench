
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int jctx (int *) ;
 int js_copy (int *,int) ;
 int * mpv_error_string (int) ;
 int set_last_error (int ,int,int *) ;

__attribute__((used)) static bool pushed_error(js_State *J, int err, int def)
{
    bool iserr = err < 0;
    set_last_error(jctx(J), iserr, iserr ? mpv_error_string(err) : ((void*)0));
    if (!iserr)
        return 0;

    js_copy(J, def);
    return 1;
}
