
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_err_t ;
struct TYPE_6__ {int valid_info; int ready; int dir; int finddata; } ;
typedef TYPE_2__ ngx_dir_t ;


 int FindFirstFile (char const*,int *) ;
 int INVALID_HANDLE_VALUE ;
 int NGX_ERROR ;
 int NGX_OK ;
 char* malloc (int ) ;
 char* ngx_cpymem (char*,int ,int ) ;
 int ngx_errno ;
 int ngx_free (char*) ;
 int ngx_set_errno (int ) ;

ngx_int_t
ngx_open_dir(ngx_str_t *name, ngx_dir_t *dir)
{
    u_char *pattern, *p;
    ngx_err_t err;

    pattern = malloc(name->len + 3);
    if (pattern == ((void*)0)) {
        return NGX_ERROR;
    }

    p = ngx_cpymem(pattern, name->data, name->len);

    *p++ = '/';
    *p++ = '*';
    *p = '\0';

    dir->dir = FindFirstFile((const char *) pattern, &dir->finddata);

    if (dir->dir == INVALID_HANDLE_VALUE) {
        err = ngx_errno;
        ngx_free(pattern);
        ngx_set_errno(err);
        return NGX_ERROR;
    }

    ngx_free(pattern);

    dir->valid_info = 1;
    dir->ready = 1;

    return NGX_OK;
}
