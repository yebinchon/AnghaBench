#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sint8 ;
struct TYPE_15__ {int /*<<< orphan*/  length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ mqtt_message_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {scalar_t__ pending_msg_q; int /*<<< orphan*/  mqtt_connection; } ;
struct TYPE_16__ {TYPE_3__ mqtt_state; scalar_t__ connected; TYPE_8__* pesp_conn; scalar_t__ secure; } ;
typedef  TYPE_5__ lmqtt_userdata ;
struct TYPE_13__ {TYPE_1__* tcp; } ;
struct TYPE_17__ {TYPE_2__ proto; } ;
struct TYPE_12__ {scalar_t__ local_port; scalar_t__ remote_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESPCONN_CONN ; 
 int /*<<< orphan*/  ESPCONN_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11( lua_State* L )
{
  FUNC0("enter mqtt_socket_close.\n");
  int i = 0;
  lmqtt_userdata *mud = NULL;

  mud = (lmqtt_userdata *)FUNC6(L, 1, "mqtt.socket");
  FUNC5(L, mud, 1, "mqtt.socket expected");
  if (mud == NULL || mud->pesp_conn == NULL) {
    FUNC7(L, 0);
    return 1;
  }

  sint8 espconn_status = ESPCONN_CONN;
  if (mud->connected) {
    // Send disconnect message
    mqtt_message_t* temp_msg = FUNC8(&mud->mqtt_state.mqtt_connection);
    FUNC0("Send MQTT disconnect infomation, data len: %d, d[0]=%d \r\n", temp_msg->length,  temp_msg->data[0]);

#ifdef CLIENT_SSL_ENABLE
    if(mud->secure) {
      espconn_status = espconn_secure_send(mud->pesp_conn, temp_msg->data, temp_msg->length);
      if(mud->pesp_conn->proto.tcp->remote_port || mud->pesp_conn->proto.tcp->local_port)
        espconn_status |= espconn_secure_disconnect(mud->pesp_conn);
    } else
#endif
    {
      espconn_status = FUNC4(mud->pesp_conn, temp_msg->data, temp_msg->length);
      if(mud->pesp_conn->proto.tcp->remote_port || mud->pesp_conn->proto.tcp->local_port)
        espconn_status |= FUNC1(mud->pesp_conn);
    }
  }
  mud->connected = 0;

  while (mud->mqtt_state.pending_msg_q) {
    FUNC10(FUNC9(&(mud->mqtt_state.pending_msg_q)));
  }

  FUNC0("leave mqtt_socket_close.\n");

  if (espconn_status == ESPCONN_OK) {
    FUNC7(L, 1);
  } else {
    FUNC7(L, 0);
  }
  return 1;
}