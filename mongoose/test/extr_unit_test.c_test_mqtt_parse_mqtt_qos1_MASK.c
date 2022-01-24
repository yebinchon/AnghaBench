#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  p; int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  p; int /*<<< orphan*/  len; } ;
struct mg_mqtt_message {TYPE_2__ payload; TYPE_1__ topic; int /*<<< orphan*/  message_id; int /*<<< orphan*/  qos; int /*<<< orphan*/  cmd; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  msg_qos1 ;
typedef  int /*<<< orphan*/  mm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int MG_MQTT_CMD_PUBLISH ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mqtt_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,struct mg_mqtt_message*) ; 

__attribute__((used)) static const char *FUNC7(void) {
  /* clang-format off */
  struct mg_mqtt_message mm;
  char msg_qos1[] = {
      ((MG_MQTT_CMD_PUBLISH << 4) | (1 << 1)),
      2 + 6 + 2 + 7,
      0, 6, '/', 't', 'o', 'p', 'i', 'c',
      0x12, 0x34,
      'p', 'a', 'y', 'l', 'o', 'a', 'd',
  };
  /* clang-format on */
  struct mbuf mb;
  FUNC5(&mm, 0, sizeof(mm));
  FUNC4(&mb, 0);
  FUNC2(&mb, msg_qos1, sizeof(msg_qos1));
  FUNC0(FUNC6(&mb, &mm), (int) sizeof(msg_qos1));
  FUNC0(mm.cmd, MG_MQTT_CMD_PUBLISH);
  FUNC0(mm.qos, 1);
  FUNC0(mm.message_id, 0x1234);
  FUNC0(mm.topic.len, 6);
  FUNC1(mm.topic.p, "/topic");
  FUNC0(mm.payload.len, 7);
  FUNC1(mm.payload.p, "payload");
  FUNC3(&mb);
  return NULL;
}