
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;
typedef int openvpn_net_ctx_t ;



__attribute__((used)) static inline int
net_ctx_init(struct context *c, openvpn_net_ctx_t *ctx)
{
    return 0;
}
