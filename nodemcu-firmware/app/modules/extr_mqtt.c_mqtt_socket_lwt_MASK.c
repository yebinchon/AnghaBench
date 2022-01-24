#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int* will_topic; int* will_message; void* will_retain; void* will_qos; } ;
struct TYPE_5__ {TYPE_1__ connect_info; } ;
typedef  TYPE_2__ lmqtt_userdata ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,char const*,size_t) ; 

__attribute__((used)) static int FUNC10( lua_State* L )
{
  FUNC0("enter mqtt_socket_lwt.\n");
  uint8_t stack = 1;
  size_t topicSize, msgSize;
  FUNC0("mqtt_socket_lwt.\n");
  lmqtt_userdata *mud = NULL;
  const char *lwtTopic, *lwtMsg;
  uint8_t lwtQoS, lwtRetain;

  mud = (lmqtt_userdata *)FUNC5( L, stack, "mqtt.socket" );
  FUNC3( L, mud, stack, "mqtt.socket expected" );

  if(mud == NULL)
    return 0;

  stack++;
  lwtTopic = FUNC4( L, stack, &topicSize );
  if (lwtTopic == NULL)
  {
    return FUNC6( L, "need lwt topic");
  }

  stack++;
  lwtMsg = FUNC4( L, stack, &msgSize );
  if (lwtMsg == NULL)
  {
    return FUNC6( L, "need lwt message");
  }
  stack++;
  if(mud->connect_info.will_topic){    // free the previous one if there is any
    FUNC2(mud->connect_info.will_topic);
    mud->connect_info.will_topic = NULL;
  }
  if(mud->connect_info.will_message){
    FUNC2(mud->connect_info.will_message);
    mud->connect_info.will_message = NULL;
  }

  mud->connect_info.will_topic = (uint8_t*) FUNC1(1, topicSize + 1 );
  mud->connect_info.will_message = (uint8_t*) FUNC1(1, msgSize + 1 );
  if(!mud->connect_info.will_topic || !mud->connect_info.will_message){
    if(mud->connect_info.will_topic){
      FUNC2(mud->connect_info.will_topic);
      mud->connect_info.will_topic = NULL;
    }
    if(mud->connect_info.will_message){
      FUNC2(mud->connect_info.will_message);
      mud->connect_info.will_message = NULL;
    }
    return FUNC6( L, "not enough memory");
  }
  FUNC9(mud->connect_info.will_topic, lwtTopic, topicSize);
  mud->connect_info.will_topic[topicSize] = 0;
  FUNC9(mud->connect_info.will_message, lwtMsg, msgSize);
  mud->connect_info.will_message[msgSize] = 0;

  if ( FUNC7(L, stack) )
  {
    mud->connect_info.will_qos = FUNC8(L, stack);
    stack++;
  }
  if ( FUNC7(L, stack) )
  {
    mud->connect_info.will_retain = FUNC8(L, stack);
    stack++;
  }

  FUNC0("mqtt_socket_lwt: topic: %s, message: %s, qos: %d, retain: %d\n",
      mud->connect_info.will_topic,
      mud->connect_info.will_message,
      mud->connect_info.will_qos,
      mud->connect_info.will_retain);
  FUNC0("leave mqtt_socket_lwt.\n");
  return 0;
}