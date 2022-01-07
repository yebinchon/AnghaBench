
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u_char ;
typedef int ngx_int_t ;
struct TYPE_7__ {scalar_t__ cFileName; } ;
struct TYPE_5__ {size_t len; int * data; } ;
struct TYPE_6__ {scalar_t__ dir; char* pattern; int no_match; int last; int ready; TYPE_4__ finddata; TYPE_1__ name; int log; scalar_t__ test; } ;
typedef TYPE_2__ ngx_glob_t ;
typedef scalar_t__ ngx_err_t ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 scalar_t__ FindFirstFile (char const*,TYPE_4__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_alloc (int,int ) ;
 int ngx_cpystrn (int *,char*,size_t) ;
 scalar_t__ ngx_errno ;
 int ngx_memcpy (int *,char*,size_t) ;
 size_t ngx_strlen (scalar_t__) ;

ngx_int_t
ngx_open_glob(ngx_glob_t *gl)
{
    u_char *p;
    size_t len;
    ngx_err_t err;

    gl->dir = FindFirstFile((const char *) gl->pattern, &gl->finddata);

    if (gl->dir == INVALID_HANDLE_VALUE) {

        err = ngx_errno;

        if ((err == ERROR_FILE_NOT_FOUND || err == ERROR_PATH_NOT_FOUND)
             && gl->test)
        {
            gl->no_match = 1;
            return NGX_OK;
        }

        return NGX_ERROR;
    }

    for (p = gl->pattern; *p; p++) {
        if (*p == '/') {
            gl->last = p + 1 - gl->pattern;
        }
    }

    len = ngx_strlen(gl->finddata.cFileName);
    gl->name.len = gl->last + len;

    gl->name.data = ngx_alloc(gl->name.len + 1, gl->log);
    if (gl->name.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(gl->name.data, gl->pattern, gl->last);
    ngx_cpystrn(gl->name.data + gl->last, (u_char *) gl->finddata.cFileName,
                len + 1);

    gl->ready = 1;

    return NGX_OK;
}
