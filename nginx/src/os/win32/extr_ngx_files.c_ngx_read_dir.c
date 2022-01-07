
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {int type; int finddata; int dir; scalar_t__ ready; } ;
typedef TYPE_1__ ngx_dir_t ;


 scalar_t__ FindNextFile (int ,int *) ;
 int NGX_ERROR ;
 int NGX_OK ;

ngx_int_t
ngx_read_dir(ngx_dir_t *dir)
{
    if (dir->ready) {
        dir->ready = 0;
        return NGX_OK;
    }

    if (FindNextFile(dir->dir, &dir->finddata) != 0) {
        dir->type = 1;
        return NGX_OK;
    }

    return NGX_ERROR;
}
