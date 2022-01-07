
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bind; scalar_t__ wildcard; } ;
typedef TYPE_1__ ngx_rtmp_conf_addr_t ;
typedef int ngx_int_t ;



__attribute__((used)) static ngx_int_t
ngx_rtmp_cmp_conf_addrs(const void *one, const void *two)
{
    ngx_rtmp_conf_addr_t *first, *second;

    first = (ngx_rtmp_conf_addr_t *) one;
    second = (ngx_rtmp_conf_addr_t *) two;

    if (first->wildcard) {

        return 1;
    }

    if (first->bind && !second->bind) {

        return -1;
    }

    if (!first->bind && second->bind) {

        return 1;
    }



    return 0;
}
