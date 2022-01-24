#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* tcp; } ;
struct espconn {TYPE_2__ proto; scalar_t__ reverse; } ;
typedef  int sint8 ;
typedef  int /*<<< orphan*/  lmqtt_userdata ;
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
typedef  TYPE_3__ ip_addr_t ;
struct TYPE_10__ {scalar_t__ addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  remote_ip; } ;

/* Variables and functions */
 int ESPCONN_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPSTR ; 
 int /*<<< orphan*/  MQTT_CONN_FAIL_DNS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int dns_reconn_count ; 
 int FUNC2 (struct espconn*,char const*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__ host_ip ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (struct espconn*) ; 
 int /*<<< orphan*/  socket_dns_foundcb ; 

__attribute__((used)) static sint8 FUNC7(const char *name, ip_addr_t *ipaddr, void *arg)
{
  FUNC1("enter socket_dns_found.\n");
  sint8 espconn_status = ESPCONN_OK;
  struct espconn *pesp_conn = arg;
  if(pesp_conn == NULL){
    FUNC1("pesp_conn null.\n");
    return -1;
  }

  if(ipaddr == NULL)
  {
    dns_reconn_count++;
    if( dns_reconn_count >= 5 ){
      FUNC1( "DNS Fail!\n" );
      // Note: should delete the pesp_conn or unref self_ref here.

      struct espconn *pesp_conn = arg;
      if(pesp_conn != NULL) {
          lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
          if(mud != NULL) {
            FUNC4(mud, MQTT_CONN_FAIL_DNS);
          }
      }

      FUNC5(arg);   // although not connected, but fire disconnect callback to release every thing.
      return -1;
    }
    FUNC1( "DNS retry %d!\n", dns_reconn_count );
    host_ip.addr = 0;
    return FUNC2(pesp_conn, name, &host_ip, socket_dns_foundcb);
  }

  // ipaddr->addr is a uint32_t ip
  if(ipaddr->addr != 0)
  {
    dns_reconn_count = 0;
    FUNC3(pesp_conn->proto.tcp->remote_ip, &(ipaddr->addr), 4);
    FUNC1("TCP ip is set: ");
    FUNC1(IPSTR, FUNC0(&(ipaddr->addr)));
    FUNC1("\n");
    espconn_status = FUNC6(pesp_conn);
  }
  FUNC1("leave socket_dns_found.\n");

  return espconn_status;
}