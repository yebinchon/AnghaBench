
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_socket_info {int proto; TYPE_3__* lsa; int remote_float; } ;
struct TYPE_5__ {int sa_family; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
struct TYPE_8__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_4__ dest; } ;
struct buffer {scalar_t__ len; } ;
struct TYPE_7__ {int remote_list; } ;




 int addrlist_match_proto (TYPE_4__*,int ,int ) ;
 int link_socket_actual_defined (struct link_socket_actual const*) ;

__attribute__((used)) static inline bool
link_socket_verify_incoming_addr(struct buffer *buf,
                                 const struct link_socket_info *info,
                                 const struct link_socket_actual *from_addr)
{
    if (buf->len > 0)
    {
        switch (from_addr->dest.addr.sa.sa_family)
        {
            case 128:
            case 129:
                if (!link_socket_actual_defined(from_addr))
                {
                    return 0;
                }
                if (info->remote_float || (!info->lsa->remote_list))
                {
                    return 1;
                }
                if (addrlist_match_proto(&from_addr->dest, info->lsa->remote_list, info->proto))
                {
                    return 1;
                }
        }
    }
    return 0;
}
