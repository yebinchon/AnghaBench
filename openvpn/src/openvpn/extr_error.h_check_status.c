
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
struct link_socket {int dummy; } ;


 scalar_t__ check_debug_level (int ) ;
 int x_check_status (int,char const*,struct link_socket*,struct tuntap*) ;
 int x_cs_verbose_level ;

__attribute__((used)) static inline void
check_status(int status, const char *description, struct link_socket *sock, struct tuntap *tt)
{
    if (status < 0 || check_debug_level(x_cs_verbose_level))
    {
        x_check_status(status, description, sock, tt);
    }
}
