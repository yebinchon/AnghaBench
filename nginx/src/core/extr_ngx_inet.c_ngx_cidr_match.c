
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct in6_addr {int* s6_addr; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_10__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {size_t sa_family; } ;
typedef size_t ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {int mask; int addr; } ;
struct TYPE_12__ {int* s6_addr; } ;
struct TYPE_11__ {int* s6_addr; } ;
struct TYPE_13__ {TYPE_3__ addr; TYPE_2__ mask; } ;
struct TYPE_15__ {TYPE_5__ in; TYPE_4__ in6; } ;
struct TYPE_16__ {size_t family; TYPE_6__ u; } ;
typedef TYPE_7__ ngx_cidr_t ;
struct TYPE_17__ {size_t nelts; TYPE_7__* elts; } ;
typedef TYPE_8__ ngx_array_t ;
typedef int in_addr_t ;


 size_t AF_INET ;


 scalar_t__ IN6_IS_ADDR_V4MAPPED (struct in6_addr*) ;
 int NGX_DECLINED ;
 int NGX_OK ;
 int htonl (int) ;

ngx_int_t
ngx_cidr_match(struct sockaddr *sa, ngx_array_t *cidrs)
{



    in_addr_t inaddr;
    ngx_cidr_t *cidr;
    ngx_uint_t family, i;
    family = sa->sa_family;

    if (family == AF_INET) {
        inaddr = ((struct sockaddr_in *) sa)->sin_addr.s_addr;
    }
    for (cidr = cidrs->elts, i = 0; i < cidrs->nelts; i++) {
        if (cidr[i].family != family) {
            goto next;
        }

        switch (family) {
        default:
            if ((inaddr & cidr[i].u.in.mask) != cidr[i].u.in.addr) {
                goto next;
            }
            break;
        }

        return NGX_OK;

    next:
        continue;
    }

    return NGX_DECLINED;
}
