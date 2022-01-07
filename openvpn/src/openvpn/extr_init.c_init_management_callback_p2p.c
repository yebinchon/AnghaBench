
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct management_callback {int network_change; int remote_cmd; int proxy_cmd; int show_net; int status; struct context* arg; } ;
struct context {int dummy; } ;


 int CLEAR (struct management_callback) ;
 scalar_t__ management ;
 int management_callback_network_change ;
 int management_callback_proxy_cmd ;
 int management_callback_remote_cmd ;
 int management_callback_status_p2p ;
 int management_set_callback (scalar_t__,struct management_callback*) ;
 int management_show_net_callback ;

void
init_management_callback_p2p(struct context *c)
{
}
