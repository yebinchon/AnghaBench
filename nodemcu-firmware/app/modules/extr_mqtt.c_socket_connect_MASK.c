#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct espconn {scalar_t__ reverse; } ;
typedef  int /*<<< orphan*/  sint8 ;
struct TYPE_2__ {int /*<<< orphan*/  mqttTimer; scalar_t__ secure; int /*<<< orphan*/  connState; int /*<<< orphan*/  event_timeout; } ;
typedef  TYPE_1__ lmqtt_userdata ;

/* Variables and functions */
 int /*<<< orphan*/  ESPCONN_ARG ; 
 int /*<<< orphan*/  ESPCONN_CONN ; 
 int /*<<< orphan*/  MQTT_CONNECT_TIMEOUT ; 
 int /*<<< orphan*/  MQTT_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC2 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static sint8 FUNC4(struct espconn *pesp_conn)
{

  FUNC0("enter socket_connect.\n");

  sint8 espconn_status;

  if(pesp_conn == NULL)
    return ESPCONN_CONN;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == NULL)
    return ESPCONN_ARG;

  mud->event_timeout = MQTT_CONNECT_TIMEOUT;
  mud->connState = MQTT_INIT;
#ifdef CLIENT_SSL_ENABLE
  if(mud->secure)
  {
    espconn_status = espconn_secure_connect(pesp_conn);
  }
  else
#endif
  {
    espconn_status = FUNC1(pesp_conn);
  }

  FUNC3(&mud->mqttTimer, 1000, 1);

  FUNC0("leave socket_connect\n");

  return espconn_status;
}