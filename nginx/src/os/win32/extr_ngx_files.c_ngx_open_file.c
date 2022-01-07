
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef scalar_t__ u_long ;
typedef int u_char ;
typedef int ngx_fd_t ;
typedef int ngx_err_t ;


 int CreateFileW (int *,scalar_t__,int,int *,scalar_t__,int ,int *) ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int INVALID_HANDLE_VALUE ;
 scalar_t__ NGX_FILE_OPEN ;
 scalar_t__ NGX_OK ;
 int NGX_UTF16_BUFLEN ;
 int ngx_errno ;
 int ngx_free (int *) ;
 int ngx_set_errno (int ) ;
 int * ngx_utf8_to_utf16 (int *,int *,size_t*) ;
 scalar_t__ ngx_win32_check_filename (int *,int *,size_t) ;

ngx_fd_t
ngx_open_file(u_char *name, u_long mode, u_long create, u_long access)
{
    size_t len;
    u_short *u;
    ngx_fd_t fd;
    ngx_err_t err;
    u_short utf16[NGX_UTF16_BUFLEN];

    len = NGX_UTF16_BUFLEN;
    u = ngx_utf8_to_utf16(utf16, name, &len);

    if (u == ((void*)0)) {
        return INVALID_HANDLE_VALUE;
    }

    fd = INVALID_HANDLE_VALUE;

    if (create == NGX_FILE_OPEN
        && ngx_win32_check_filename(name, u, len) != NGX_OK)
    {
        goto failed;
    }

    fd = CreateFileW(u, mode,
                     FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
                     ((void*)0), create, FILE_FLAG_BACKUP_SEMANTICS, ((void*)0));

failed:

    if (u != utf16) {
        err = ngx_errno;
        ngx_free(u);
        ngx_set_errno(err);
    }

    return fd;
}
