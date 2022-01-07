
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket_actual {int dest; } ;


 scalar_t__ addr_defined (int *) ;

__attribute__((used)) static inline bool
link_socket_actual_defined(const struct link_socket_actual *act)
{
    return act && addr_defined(&act->dest);
}
