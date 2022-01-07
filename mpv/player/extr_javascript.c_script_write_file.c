
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int js_State ;
struct TYPE_5__ {TYPE_1__* mpctx; } ;
struct TYPE_4__ {int global; } ;
typedef int FILE ;


 int MP_VERBOSE (TYPE_2__*,char*,char const*) ;
 int add_af_file (void*,int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (char const*,int,int,int *) ;
 TYPE_2__* jctx (int *) ;
 int js_error (int *,char*,char const*) ;
 char* js_tostring (int *,int) ;
 char* mp_get_user_path (void*,int ,char const*) ;
 int strlen (char const*) ;
 char const* strstr (char const*,char const*) ;

__attribute__((used)) static void script_write_file(js_State *J, void *af)
{
    static const char *prefix = "file://";
    const char *fname = js_tostring(J, 1);
    const char *data = js_tostring(J, 2);
    if (strstr(fname, prefix) != fname)
        js_error(J, "File name must be prefixed with '%s'", prefix);
    fname += strlen(prefix);
    fname = mp_get_user_path(af, jctx(J)->mpctx->global, fname);
    MP_VERBOSE(jctx(J), "Writing file '%s'\n", fname);

    FILE *f = fopen(fname, "wb");
    if (!f)
        js_error(J, "Cannot open file for writing: '%s'", fname);
    add_af_file(af, f);

    int len = strlen(data);
    int wrote = fwrite(data, 1, len, f);
    if (len != wrote)
        js_error(J, "Cannot write to file: '%s'", fname);
}
