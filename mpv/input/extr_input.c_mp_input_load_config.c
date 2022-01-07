
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct input_ctx {TYPE_1__* opts; int global; } ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef TYPE_2__ bstr ;
struct TYPE_10__ {char* config_file; scalar_t__ use_gamepad; } ;


 TYPE_2__ bstr0 (int ) ;
 int bstr_eatstart0 (TYPE_2__*,char*) ;
 TYPE_2__ bstr_getline (TYPE_2__,TYPE_2__*) ;
 int bstr_startswith0 (TYPE_2__,char*) ;
 int builtin_input_conf ;
 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int m_option_type_string ;
 char** mp_find_all_config_files (void*,int ,char*) ;
 int mp_input_pipe_add (struct input_ctx*,char*) ;
 int mp_input_sdl_gamepad_add (struct input_ctx*) ;
 int mp_read_option_raw (int ,char*,int *,char**) ;
 int parse_config (struct input_ctx*,int,TYPE_2__,char*,int *) ;
 int parse_config_file (struct input_ctx*,char*,int) ;
 int reload_opts (struct input_ctx*,int) ;
 int talloc_free (char*) ;
 void* talloc_new (int *) ;

void mp_input_load_config(struct input_ctx *ictx)
{
    input_lock(ictx);

    reload_opts(ictx, 0);



    bstr builtin = bstr0(builtin_input_conf);
    while (builtin.len) {
        bstr line = bstr_getline(builtin, &builtin);
        bstr_eatstart0(&line, "#");
        if (!bstr_startswith0(line, " "))
            parse_config(ictx, 1, line, "<builtin>", ((void*)0));
    }

    bool config_ok = 0;
    if (ictx->opts->config_file && ictx->opts->config_file[0])
        config_ok = parse_config_file(ictx, ictx->opts->config_file, 1);
    if (!config_ok) {

        void *tmp = talloc_new(((void*)0));
        char **files = mp_find_all_config_files(tmp, ictx->global, "input.conf");
        for (int n = 0; files && files[n]; n++)
            parse_config_file(ictx, files[n], 0);
        talloc_free(tmp);
    }
    input_unlock(ictx);
}
