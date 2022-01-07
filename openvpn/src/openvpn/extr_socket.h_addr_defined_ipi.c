
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int ipi6_addr; } ;
struct TYPE_11__ {int s_addr; } ;
struct TYPE_12__ {int s_addr; TYPE_4__ ipi_spec_dst; } ;
struct TYPE_14__ {TYPE_6__ in6; TYPE_5__ in4; } ;
struct TYPE_8__ {int sa_family; } ;
struct TYPE_9__ {TYPE_1__ sa; } ;
struct TYPE_10__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_7__ pi; TYPE_3__ dest; } ;




 int ASSERT (int ) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;

__attribute__((used)) static inline bool
addr_defined_ipi(const struct link_socket_actual *lsa)
{
    ASSERT(0);

    return 0;
}
