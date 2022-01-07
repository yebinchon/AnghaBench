
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openvpn_sockaddr {int addr; } ;



__attribute__((used)) static inline void
addr_copy_sa(struct openvpn_sockaddr *dst, const struct openvpn_sockaddr *src)
{
    dst->addr = src->addr;
}
