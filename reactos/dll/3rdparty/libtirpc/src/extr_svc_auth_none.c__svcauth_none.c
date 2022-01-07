
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_req {TYPE_1__* rq_xprt; } ;
struct rpc_msg {int dummy; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
struct TYPE_2__ {int * xp_auth; } ;


 int AUTH_OK ;
 int svc_auth_none ;

enum auth_stat
_svcauth_none(struct svc_req *rqst, struct rpc_msg *msg)
{
 rqst->rq_xprt->xp_auth = &svc_auth_none;

 return (AUTH_OK);
}
