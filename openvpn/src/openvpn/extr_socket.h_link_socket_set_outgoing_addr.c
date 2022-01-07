
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_socket_info {int proto; scalar_t__ remote_float; int connection_established; struct link_socket_addr* lsa; } ;
struct TYPE_2__ {int dest; } ;
struct link_socket_addr {int remote_list; TYPE_1__ actual; } ;
struct link_socket_actual {int dest; } ;
struct env_set {int dummy; } ;
struct buffer {scalar_t__ len; } ;


 int addr_match_proto (int *,int *,int ) ;
 scalar_t__ addrlist_match_proto (int *,int ,int ) ;
 int link_socket_connection_initiated (struct buffer const*,struct link_socket_info*,struct link_socket_actual const*,char const*,struct env_set*) ;

__attribute__((used)) static inline void
link_socket_set_outgoing_addr(const struct buffer *buf,
                              struct link_socket_info *info,
                              const struct link_socket_actual *act,
                              const char *common_name,
                              struct env_set *es)
{
    if (!buf || buf->len > 0)
    {
        struct link_socket_addr *lsa = info->lsa;
        if (

            (!info->connection_established
             || !addr_match_proto(&act->dest, &lsa->actual.dest, info->proto)
            )
            &&

            (info->remote_float
             || (!lsa->remote_list || addrlist_match_proto(&act->dest, lsa->remote_list, info->proto))
            )
            )
        {
            link_socket_connection_initiated(buf, info, act, common_name, es);
        }
    }
}
