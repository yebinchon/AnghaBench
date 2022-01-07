
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_socket_info {int ipchange_command; TYPE_4__* lsa; } ;
struct gc_arena {int dummy; } ;
struct argv {int dummy; } ;
struct TYPE_5__ {int sa; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct TYPE_7__ {TYPE_2__ dest; } ;
struct TYPE_8__ {TYPE_3__ actual; } ;


 int PS_SHOW_PORT ;
 int argv_parse_cmd (struct argv*,int ) ;
 int argv_printf (struct argv*,char*,char const*) ;
 int argv_printf_cat (struct argv*,char*,char const*) ;
 char* print_sockaddr_ex (int *,char*,int ,struct gc_arena*) ;

__attribute__((used)) static void
ipchange_fmt(const bool include_cmd, struct argv *argv, const struct link_socket_info *info, struct gc_arena *gc)
{
    const char *host = print_sockaddr_ex(&info->lsa->actual.dest.addr.sa, " ", PS_SHOW_PORT, gc);
    if (include_cmd)
    {
        argv_parse_cmd(argv, info->ipchange_command);
        argv_printf_cat(argv, "%s", host);
    }
    else
    {
        argv_printf(argv, "%s", host);
    }

}
