
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {scalar_t__ cFileName; } ;
struct TYPE_7__ {int last; int pattern; int log; TYPE_1__ name; TYPE_5__ finddata; int dir; scalar_t__ ready; scalar_t__ no_match; } ;
typedef TYPE_2__ ngx_glob_t ;
typedef scalar_t__ ngx_err_t ;


 scalar_t__ FindNextFile (int ,TYPE_5__*) ;
 int NGX_DONE ;
 scalar_t__ NGX_ENOMOREFILES ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int * ngx_alloc (int,int ) ;
 int ngx_cpystrn (int *,int *,size_t) ;
 scalar_t__ ngx_errno ;
 int ngx_free (int *) ;
 int ngx_log_error (int ,int ,scalar_t__,char*,int ) ;
 int ngx_memcpy (int *,int ,int) ;
 size_t ngx_strlen (scalar_t__) ;

ngx_int_t
ngx_read_glob(ngx_glob_t *gl, ngx_str_t *name)
{
    size_t len;
    ngx_err_t err;

    if (gl->no_match) {
        return NGX_DONE;
    }

    if (gl->ready) {
        *name = gl->name;

        gl->ready = 0;
        return NGX_OK;
    }

    ngx_free(gl->name.data);
    gl->name.data = ((void*)0);

    if (FindNextFile(gl->dir, &gl->finddata) != 0) {

        len = ngx_strlen(gl->finddata.cFileName);
        gl->name.len = gl->last + len;

        gl->name.data = ngx_alloc(gl->name.len + 1, gl->log);
        if (gl->name.data == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_memcpy(gl->name.data, gl->pattern, gl->last);
        ngx_cpystrn(gl->name.data + gl->last, (u_char *) gl->finddata.cFileName,
                    len + 1);

        *name = gl->name;

        return NGX_OK;
    }

    err = ngx_errno;

    if (err == NGX_ENOMOREFILES) {
        return NGX_DONE;
    }

    ngx_log_error(NGX_LOG_ALERT, gl->log, err,
                  "FindNextFile(%s) failed", gl->pattern);

    return NGX_ERROR;
}
