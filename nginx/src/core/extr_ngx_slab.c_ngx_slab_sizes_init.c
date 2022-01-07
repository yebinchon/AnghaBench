
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_uint_t ;


 int ngx_pagesize ;
 int ngx_slab_exact_shift ;
 int ngx_slab_exact_size ;
 int ngx_slab_max_size ;

void
ngx_slab_sizes_init(void)
{
    ngx_uint_t n;

    ngx_slab_max_size = ngx_pagesize / 2;
    ngx_slab_exact_size = ngx_pagesize / (8 * sizeof(uintptr_t));
    for (n = ngx_slab_exact_size; n >>= 1; ngx_slab_exact_shift++) {

    }
}
