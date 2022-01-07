
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {int dir; } ;
typedef TYPE_1__ ngx_dir_t ;


 scalar_t__ FindClose (int ) ;
 int NGX_ERROR ;
 int NGX_OK ;

ngx_int_t
ngx_close_dir(ngx_dir_t *dir)
{
    if (FindClose(dir->dir) == 0) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
