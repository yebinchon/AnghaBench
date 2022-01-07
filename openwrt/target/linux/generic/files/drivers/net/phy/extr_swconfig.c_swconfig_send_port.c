
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_port {int flags; int id; } ;
struct swconfig_callback {struct nlattr** nest; int msg; int cmd; } ;
struct nlattr {int dummy; } ;


 int SWITCH_ATTR_PORT ;
 int SWITCH_PORT_FLAG_TAGGED ;
 int SWITCH_PORT_ID ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 void* nla_nest_start (int ,int ) ;
 scalar_t__ nla_put_flag (int ,int) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;

__attribute__((used)) static int
swconfig_send_port(struct swconfig_callback *cb, void *arg)
{
 const struct switch_port *port = arg;
 struct nlattr *p = ((void*)0);

 if (!cb->nest[0]) {
  cb->nest[0] = nla_nest_start(cb->msg, cb->cmd);
  if (!cb->nest[0])
   return -1;
 }

 p = nla_nest_start(cb->msg, SWITCH_ATTR_PORT);
 if (!p)
  goto error;

 if (nla_put_u32(cb->msg, SWITCH_PORT_ID, port->id))
  goto nla_put_failure;
 if (port->flags & (1 << SWITCH_PORT_FLAG_TAGGED)) {
  if (nla_put_flag(cb->msg, SWITCH_PORT_FLAG_TAGGED))
   goto nla_put_failure;
 }

 nla_nest_end(cb->msg, p);
 return 0;

nla_put_failure:
  nla_nest_cancel(cb->msg, p);
error:
 nla_nest_cancel(cb->msg, cb->nest[0]);
 return -1;
}
