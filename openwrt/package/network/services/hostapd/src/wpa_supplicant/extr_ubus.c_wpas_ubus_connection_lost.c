
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct ubus_context {TYPE_1__ sock; } ;


 int eloop_register_timeout (int,int ,int ,struct ubus_context*,int *) ;
 int eloop_unregister_read_sock (int ) ;
 int ubus_reconnect_timeout ;

__attribute__((used)) static void wpas_ubus_connection_lost(struct ubus_context *ctx)
{
 eloop_unregister_read_sock(ctx->sock.fd);
 eloop_register_timeout(1, 0, ubus_reconnect_timeout, ctx, ((void*)0));
}
