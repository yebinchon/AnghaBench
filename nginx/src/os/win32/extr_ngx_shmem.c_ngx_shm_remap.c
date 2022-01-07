
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int name; int size; int log; int * addr; int handle; } ;
typedef TYPE_1__ ngx_shm_t ;
typedef int ngx_int_t ;


 int FILE_MAP_WRITE ;
 int * MapViewOfFileEx (int ,int ,int ,int ,int ,int *) ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 scalar_t__ UnmapViewOfFile (int *) ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,int ,int *,...) ;

ngx_int_t
ngx_shm_remap(ngx_shm_t *shm, u_char *addr)
{
    if (UnmapViewOfFile(shm->addr) == 0) {
        ngx_log_error(NGX_LOG_ALERT, shm->log, ngx_errno,
                      "UnmapViewOfFile(%p) of file mapping \"%V\" failed",
                      shm->addr, &shm->name);
        return NGX_ERROR;
    }

    shm->addr = MapViewOfFileEx(shm->handle, FILE_MAP_WRITE, 0, 0, 0, addr);

    if (shm->addr != ((void*)0)) {
        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_ALERT, shm->log, ngx_errno,
                  "MapViewOfFileEx(%uz, %p) of file mapping \"%V\" failed",
                  shm->size, addr, &shm->name);

    return NGX_ERROR;
}
