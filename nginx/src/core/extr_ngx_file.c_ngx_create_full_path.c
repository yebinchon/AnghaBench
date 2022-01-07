
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int ngx_uint_t ;
typedef int ngx_err_t ;




 scalar_t__ NGX_FILE_ERROR ;
 scalar_t__ ngx_create_dir (char*,int ) ;
 int ngx_errno ;

ngx_err_t
ngx_create_full_path(u_char *dir, ngx_uint_t access)
{
    u_char *p, ch;
    ngx_err_t err;

    err = 0;




    p = dir + 1;


    for ( ; *p; p++) {
        ch = *p;

        if (ch != '/') {
            continue;
        }

        *p = '\0';

        if (ngx_create_dir(dir, access) == NGX_FILE_ERROR) {
            err = ngx_errno;

            switch (err) {
            case 128:
                err = 0;
            case 129:
                break;

            default:
                return err;
            }
        }

        *p = '/';
    }

    return err;
}
