
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * s; } ;
struct TYPE_4__ {int * auth_protocol; TYPE_1__ authentication_plugin_data; int * intern_auth_plugin_data; int * server_version; } ;
typedef TYPE_2__ MYSQLND_PACKET_GREET ;


 int efree (int *) ;

__attribute__((used)) static
void php_mysqlnd_greet_free_mem(void * _packet)
{
 MYSQLND_PACKET_GREET *p= (MYSQLND_PACKET_GREET *) _packet;
 if (p->server_version) {
  efree(p->server_version);
  p->server_version = ((void*)0);
 }
 if (p->authentication_plugin_data.s && p->authentication_plugin_data.s != p->intern_auth_plugin_data) {
  efree(p->authentication_plugin_data.s);
  p->authentication_plugin_data.s = ((void*)0);
 }
 if (p->auth_protocol) {
  efree(p->auth_protocol);
  p->auth_protocol = ((void*)0);
 }
}
