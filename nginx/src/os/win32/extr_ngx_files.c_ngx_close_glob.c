
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ dir; int pattern; int log; TYPE_1__ name; } ;
typedef TYPE_2__ ngx_glob_t ;


 scalar_t__ FindClose (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NGX_LOG_ALERT ;
 int ngx_errno ;
 int ngx_free (scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;

void
ngx_close_glob(ngx_glob_t *gl)
{
    if (gl->name.data) {
        ngx_free(gl->name.data);
    }

    if (gl->dir == INVALID_HANDLE_VALUE) {
        return;
    }

    if (FindClose(gl->dir) == 0) {
        ngx_log_error(NGX_LOG_ALERT, gl->log, ngx_errno,
                      "FindClose(%s) failed", gl->pattern);
    }
}
