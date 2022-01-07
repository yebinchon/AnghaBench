
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_err_t ;
struct TYPE_2__ {size_t len; int * data; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int NGX_SYS_NERR ;
 int errno ;
 void* malloc (size_t) ;
 int ngx_log_stderr (int ,char*,size_t,int,char*) ;
 int ngx_memcpy (int *,char*,size_t) ;
 size_t ngx_strlen (char*) ;
 TYPE_1__* ngx_sys_errlist ;
 char* strerror (int) ;

ngx_int_t
ngx_strerror_init(void)
{
    char *msg;
    u_char *p;
    size_t len;
    ngx_err_t err;






    len = NGX_SYS_NERR * sizeof(ngx_str_t);

    ngx_sys_errlist = malloc(len);
    if (ngx_sys_errlist == ((void*)0)) {
        goto failed;
    }

    for (err = 0; err < NGX_SYS_NERR; err++) {
        msg = strerror(err);
        len = ngx_strlen(msg);

        p = malloc(len);
        if (p == ((void*)0)) {
            goto failed;
        }

        ngx_memcpy(p, msg, len);
        ngx_sys_errlist[err].len = len;
        ngx_sys_errlist[err].data = p;
    }

    return NGX_OK;

failed:

    err = errno;
    ngx_log_stderr(0, "malloc(%uz) failed (%d: %s)", len, err, strerror(err));

    return NGX_ERROR;
}
