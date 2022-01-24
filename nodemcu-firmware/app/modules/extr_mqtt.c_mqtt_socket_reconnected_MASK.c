#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct espconn {scalar_t__ reverse; } ;
typedef  int /*<<< orphan*/  sint8_t ;
struct TYPE_3__ {scalar_t__ secure; scalar_t__ event_timeout; int /*<<< orphan*/  mqttTimer; } ;
typedef  TYPE_1__ lmqtt_userdata ;

/* Variables and functions */
 int /*<<< orphan*/  MQTT_CONN_FAIL_SERVER_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *arg, sint8_t err)
{
  FUNC0("enter mqtt_socket_reconnected.\n");
  // mqtt_socket_disconnected(arg);
  struct espconn *pesp_conn = arg;
  if(pesp_conn == NULL)
    return;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == NULL)
    return;

  FUNC5(&mud->mqttTimer);

  mud->event_timeout = 0; // no need to count anymore

#ifdef CLIENT_SSL_ENABLE
  if (mud->secure) {
    espconn_secure_disconnect(pesp_conn);
  } else
#endif
  {
    FUNC1(pesp_conn);
  }

  FUNC3(mud, MQTT_CONN_FAIL_SERVER_NOT_FOUND);

  FUNC4(arg);
  FUNC0("leave mqtt_socket_reconnected.\n");
}