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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint16_t ;
struct TYPE_4__ {scalar_t__ topic_length; scalar_t__ data_length; scalar_t__ data; scalar_t__ topic; } ;
typedef  TYPE_1__ mqtt_event_data_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int cb_message_ref; int cb_overflow_ref; int self_ref; } ;
typedef  TYPE_2__ lmqtt_userdata ;

/* Variables and functions */
 int LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static void FUNC7(lmqtt_userdata * mud, uint8_t* message, uint16_t length, uint8_t is_overflow)
{
  FUNC0("enter deliver_publish (len=%d, overflow=%d).\n", length, is_overflow);
  if(mud == NULL)
    return;
  mqtt_event_data_t event_data;

  event_data.topic_length = length;
  event_data.topic = FUNC6(message, &event_data.topic_length);

  event_data.data_length = length;
  event_data.data = FUNC5(message, &event_data.data_length);

  int cb_ref = !is_overflow ? mud->cb_message_ref : mud->cb_overflow_ref;

  if(cb_ref == LUA_NOREF)
    return;
  if(mud->self_ref == LUA_NOREF)
    return;
  lua_State *L = FUNC2();
  if(event_data.topic && (event_data.topic_length > 0)){
    FUNC4(L, LUA_REGISTRYINDEX, cb_ref);
    FUNC4(L, LUA_REGISTRYINDEX, mud->self_ref);  // pass the userdata to callback func in lua
    FUNC3(L, event_data.topic, event_data.topic_length);
  } else {
    FUNC0("get wrong packet.\n");
    return;
  }
  if(event_data.data && (event_data.data_length > 0)){
    FUNC3(L, event_data.data, event_data.data_length);
    FUNC1(L, 3, 0);
  } else {
    FUNC1(L, 2, 0);
  }
  FUNC0("leave deliver_publish.\n");
}