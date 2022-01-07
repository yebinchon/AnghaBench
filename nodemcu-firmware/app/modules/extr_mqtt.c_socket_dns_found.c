
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* tcp; } ;
struct espconn {TYPE_2__ proto; scalar_t__ reverse; } ;
typedef int sint8 ;
typedef int lmqtt_userdata ;
struct TYPE_9__ {int addr; } ;
typedef TYPE_3__ ip_addr_t ;
struct TYPE_10__ {scalar_t__ addr; } ;
struct TYPE_7__ {int remote_ip; } ;


 int ESPCONN_OK ;
 int IP2STR (int *) ;
 int IPSTR ;
 int MQTT_CONN_FAIL_DNS ;
 int NODE_DBG (char*,...) ;
 int dns_reconn_count ;
 int espconn_gethostbyname (struct espconn*,char const*,TYPE_5__*,int ) ;
 TYPE_5__ host_ip ;
 int memcpy (int ,int *,int) ;
 int mqtt_connack_fail (int *,int ) ;
 int mqtt_socket_disconnected (void*) ;
 int socket_connect (struct espconn*) ;
 int socket_dns_foundcb ;

__attribute__((used)) static sint8 socket_dns_found(const char *name, ip_addr_t *ipaddr, void *arg)
{
  NODE_DBG("enter socket_dns_found.\n");
  sint8 espconn_status = ESPCONN_OK;
  struct espconn *pesp_conn = arg;
  if(pesp_conn == ((void*)0)){
    NODE_DBG("pesp_conn null.\n");
    return -1;
  }

  if(ipaddr == ((void*)0))
  {
    dns_reconn_count++;
    if( dns_reconn_count >= 5 ){
      NODE_DBG( "DNS Fail!\n" );


      struct espconn *pesp_conn = arg;
      if(pesp_conn != ((void*)0)) {
          lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
          if(mud != ((void*)0)) {
            mqtt_connack_fail(mud, MQTT_CONN_FAIL_DNS);
          }
      }

      mqtt_socket_disconnected(arg);
      return -1;
    }
    NODE_DBG( "DNS retry %d!\n", dns_reconn_count );
    host_ip.addr = 0;
    return espconn_gethostbyname(pesp_conn, name, &host_ip, socket_dns_foundcb);
  }


  if(ipaddr->addr != 0)
  {
    dns_reconn_count = 0;
    memcpy(pesp_conn->proto.tcp->remote_ip, &(ipaddr->addr), 4);
    NODE_DBG("TCP ip is set: ");
    NODE_DBG(IPSTR, IP2STR(&(ipaddr->addr)));
    NODE_DBG("\n");
    espconn_status = socket_connect(pesp_conn);
  }
  NODE_DBG("leave socket_dns_found.\n");

  return espconn_status;
}
