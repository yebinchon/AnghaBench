
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_cycle_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int environ ;
 void* ngx_alloc (size_t,int ) ;
 int ngx_argc ;
 char** ngx_argv ;
 int ngx_cpystrn (int *,int *,size_t) ;
 char** ngx_os_argv ;
 int ngx_os_environ ;
 int ngx_strlen (char* const) ;

__attribute__((used)) static ngx_int_t
ngx_save_argv(ngx_cycle_t *cycle, int argc, char *const *argv)
{







    size_t len;
    ngx_int_t i;

    ngx_os_argv = (char **) argv;
    ngx_argc = argc;

    ngx_argv = ngx_alloc((argc + 1) * sizeof(char *), cycle->log);
    if (ngx_argv == ((void*)0)) {
        return NGX_ERROR;
    }

    for (i = 0; i < argc; i++) {
        len = ngx_strlen(argv[i]) + 1;

        ngx_argv[i] = ngx_alloc(len, cycle->log);
        if (ngx_argv[i] == ((void*)0)) {
            return NGX_ERROR;
        }

        (void) ngx_cpystrn((u_char *) ngx_argv[i], (u_char *) argv[i], len);
    }

    ngx_argv[i] = ((void*)0);



    ngx_os_environ = environ;

    return NGX_OK;
}
