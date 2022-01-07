
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {double const st_mode; double const st_size; double const st_atime; double const st_mtime; double const st_ctime; } ;
typedef int js_State ;


 int S_ISDIR (double const) ;
 int S_ISREG (double const) ;
 int jctx (int *) ;
 int js_pushboolean (int *,int ) ;
 int js_setproperty (int *,int,char*) ;
 char* js_tostring (int *,int) ;
 int push_failure (int *,char*) ;
 int push_nums_obj (int *,char const**,double const*) ;
 int set_last_error (int ,int ,int *) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static void script_file_info(js_State *J)
{
    const char *path = js_tostring(J, 1);

    struct stat statbuf;
    if (stat(path, &statbuf) != 0) {
        push_failure(J, "Cannot stat path");
        return;
    }

    set_last_error(jctx(J), 0, ((void*)0));

    const char * stat_names[] = {
        "mode", "size",
        "atime", "mtime", "ctime", ((void*)0)
    };
    const double stat_values[] = {
        statbuf.st_mode,
        statbuf.st_size,
        statbuf.st_atime,
        statbuf.st_mtime,
        statbuf.st_ctime
    };

    push_nums_obj(J, stat_names, stat_values);


    js_pushboolean(J, S_ISREG(statbuf.st_mode));
    js_setproperty(J, -2, "is_file");

    js_pushboolean(J, S_ISDIR(statbuf.st_mode));
    js_setproperty(J, -2, "is_dir");
}
