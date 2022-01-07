
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef int ngx_err_t ;


 int NGX_EACCES ;
 int NGX_EEXIST ;
 int NGX_ENAMETOOLONG ;
 int NGX_ENOENT ;
 int NGX_ENOSPC ;
 int NGX_ENOTDIR ;
 int NGX_EPERM ;
 int NGX_HTTP_FORBIDDEN ;
 int NGX_HTTP_INSUFFICIENT_STORAGE ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_NOT_ALLOWED ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_ERR ;
 int ngx_log_error (int ,int *,int ,char*,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_dav_error(ngx_log_t *log, ngx_err_t err, ngx_int_t not_found,
    char *failed, u_char *path)
{
    ngx_int_t rc;
    ngx_uint_t level;

    if (err == NGX_ENOENT || err == NGX_ENOTDIR || err == NGX_ENAMETOOLONG) {
        level = NGX_LOG_ERR;
        rc = not_found;

    } else if (err == NGX_EACCES || err == NGX_EPERM) {
        level = NGX_LOG_ERR;
        rc = NGX_HTTP_FORBIDDEN;

    } else if (err == NGX_EEXIST) {
        level = NGX_LOG_ERR;
        rc = NGX_HTTP_NOT_ALLOWED;

    } else if (err == NGX_ENOSPC) {
        level = NGX_LOG_CRIT;
        rc = NGX_HTTP_INSUFFICIENT_STORAGE;

    } else {
        level = NGX_LOG_CRIT;
        rc = NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    ngx_log_error(level, log, err, "%s \"%s\" failed", failed, path);

    return rc;
}
