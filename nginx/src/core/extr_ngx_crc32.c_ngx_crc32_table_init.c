
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ngx_int_t ;
struct TYPE_2__ {int log; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 void* ngx_align_ptr (void*,scalar_t__) ;
 void* ngx_alloc (scalar_t__,int ) ;
 scalar_t__ ngx_cacheline_size ;
 int ngx_crc32_table16 ;
 void* ngx_crc32_table_short ;
 TYPE_1__* ngx_cycle ;
 int ngx_memcpy (void*,int ,int) ;

ngx_int_t
ngx_crc32_table_init(void)
{
    void *p;

    if (((uintptr_t) ngx_crc32_table_short
          & ~((uintptr_t) ngx_cacheline_size - 1))
        == (uintptr_t) ngx_crc32_table_short)
    {
        return NGX_OK;
    }

    p = ngx_alloc(16 * sizeof(uint32_t) + ngx_cacheline_size, ngx_cycle->log);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    p = ngx_align_ptr(p, ngx_cacheline_size);

    ngx_memcpy(p, ngx_crc32_table16, 16 * sizeof(uint32_t));

    ngx_crc32_table_short = p;

    return NGX_OK;
}
