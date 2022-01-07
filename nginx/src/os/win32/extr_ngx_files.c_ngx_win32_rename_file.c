
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_4__ {int len; scalar_t__ data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_err_t ;
typedef int ngx_atomic_uint_t ;


 scalar_t__ DeleteFile (char const*) ;
 scalar_t__ MoveFile (char const*,char const*) ;
 int NGX_ATOMIC_T_LEN ;
 scalar_t__ NGX_ENOMEM ;
 int NGX_LOG_CRIT ;
 int * ngx_alloc (int,int *) ;
 scalar_t__ ngx_errno ;
 int ngx_free (int *) ;
 int ngx_log_error (int ,int *,scalar_t__,char*,int *,...) ;
 int ngx_memcpy (int *,scalar_t__,int) ;
 int ngx_next_temp_number (int) ;
 int ngx_sprintf (int *,char*,int ) ;

ngx_err_t
ngx_win32_rename_file(ngx_str_t *from, ngx_str_t *to, ngx_log_t *log)
{
    u_char *name;
    ngx_err_t err;
    ngx_uint_t collision;
    ngx_atomic_uint_t num;

    name = ngx_alloc(to->len + 1 + NGX_ATOMIC_T_LEN + 1 + sizeof("DELETE"),
                     log);
    if (name == ((void*)0)) {
        return NGX_ENOMEM;
    }

    ngx_memcpy(name, to->data, to->len);

    collision = 0;



    for ( ;; ) {
        num = ngx_next_temp_number(collision);

        ngx_sprintf(name + to->len, ".%0muA.DELETE%Z", num);

        if (MoveFile((const char *) to->data, (const char *) name) != 0) {
            break;
        }

        collision = 1;

        ngx_log_error(NGX_LOG_CRIT, log, ngx_errno,
                      "MoveFile() \"%s\" to \"%s\" failed", to->data, name);
    }

    if (MoveFile((const char *) from->data, (const char *) to->data) == 0) {
        err = ngx_errno;

    } else {
        err = 0;
    }

    if (DeleteFile((const char *) name) == 0) {
        ngx_log_error(NGX_LOG_CRIT, log, ngx_errno,
                      "DeleteFile() \"%s\" failed", name);
    }



    ngx_free(name);

    return err;
}
