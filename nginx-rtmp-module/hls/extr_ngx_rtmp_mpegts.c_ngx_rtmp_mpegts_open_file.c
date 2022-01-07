
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {scalar_t__ fd; scalar_t__ size; int * log; } ;
typedef TYPE_1__ ngx_rtmp_mpegts_file_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_FILE_DEFAULT_ACCESS ;
 int NGX_FILE_TRUNCATE ;
 int NGX_FILE_WRONLY ;
 scalar_t__ NGX_INVALID_FILE ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_close_file (scalar_t__) ;
 int ngx_errno ;
 int ngx_log_error (int ,int *,int ,char*) ;
 scalar_t__ ngx_open_file (int *,int ,int ,int ) ;
 scalar_t__ ngx_rtmp_mpegts_write_header (TYPE_1__*) ;

ngx_int_t
ngx_rtmp_mpegts_open_file(ngx_rtmp_mpegts_file_t *file, u_char *path,
    ngx_log_t *log)
{
    file->log = log;

    file->fd = ngx_open_file(path, NGX_FILE_WRONLY, NGX_FILE_TRUNCATE,
                             NGX_FILE_DEFAULT_ACCESS);

    if (file->fd == NGX_INVALID_FILE) {
        ngx_log_error(NGX_LOG_ERR, log, ngx_errno,
                      "hls: error creating fragment file");
        return NGX_ERROR;
    }

    file->size = 0;

    if (ngx_rtmp_mpegts_write_header(file) != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, log, ngx_errno,
                      "hls: error writing fragment header");
        ngx_close_file(file->fd);
        return NGX_ERROR;
    }

    return NGX_OK;
}
