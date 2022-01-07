
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_list {int iflags; } ;


 scalar_t__ BOOL_CAST (int) ;
 int RL_DID_REDIRECT_DEFAULT_GATEWAY ;

__attribute__((used)) static inline int
route_did_redirect_default_gateway(const struct route_list *rl)
{
    return rl && BOOL_CAST(rl->iflags & RL_DID_REDIRECT_DEFAULT_GATEWAY);
}
