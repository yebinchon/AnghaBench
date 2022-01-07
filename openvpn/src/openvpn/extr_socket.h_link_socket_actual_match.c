
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket_actual {int dest; } ;


 int addr_port_match (int *,int *) ;

__attribute__((used)) static inline bool
link_socket_actual_match(const struct link_socket_actual *a1, const struct link_socket_actual *a2)
{
    return addr_port_match(&a1->dest, &a2->dest);
}
