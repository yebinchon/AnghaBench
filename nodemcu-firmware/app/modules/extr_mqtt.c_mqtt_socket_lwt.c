
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int lua_State ;
struct TYPE_4__ {int* will_topic; int* will_message; void* will_retain; void* will_qos; } ;
struct TYPE_5__ {TYPE_1__ connect_info; } ;
typedef TYPE_2__ lmqtt_userdata ;


 int NODE_DBG (char*,...) ;
 scalar_t__ calloc (int,size_t) ;
 int free (int*) ;
 int luaL_argcheck (int *,TYPE_2__*,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 void* lua_tointeger (int *,int) ;
 int memcpy (int*,char const*,size_t) ;

__attribute__((used)) static int mqtt_socket_lwt( lua_State* L )
{
  NODE_DBG("enter mqtt_socket_lwt.\n");
  uint8_t stack = 1;
  size_t topicSize, msgSize;
  NODE_DBG("mqtt_socket_lwt.\n");
  lmqtt_userdata *mud = ((void*)0);
  const char *lwtTopic, *lwtMsg;
  uint8_t lwtQoS, lwtRetain;

  mud = (lmqtt_userdata *)luaL_checkudata( L, stack, "mqtt.socket" );
  luaL_argcheck( L, mud, stack, "mqtt.socket expected" );

  if(mud == ((void*)0))
    return 0;

  stack++;
  lwtTopic = luaL_checklstring( L, stack, &topicSize );
  if (lwtTopic == ((void*)0))
  {
    return luaL_error( L, "need lwt topic");
  }

  stack++;
  lwtMsg = luaL_checklstring( L, stack, &msgSize );
  if (lwtMsg == ((void*)0))
  {
    return luaL_error( L, "need lwt message");
  }
  stack++;
  if(mud->connect_info.will_topic){
    free(mud->connect_info.will_topic);
    mud->connect_info.will_topic = ((void*)0);
  }
  if(mud->connect_info.will_message){
    free(mud->connect_info.will_message);
    mud->connect_info.will_message = ((void*)0);
  }

  mud->connect_info.will_topic = (uint8_t*) calloc(1, topicSize + 1 );
  mud->connect_info.will_message = (uint8_t*) calloc(1, msgSize + 1 );
  if(!mud->connect_info.will_topic || !mud->connect_info.will_message){
    if(mud->connect_info.will_topic){
      free(mud->connect_info.will_topic);
      mud->connect_info.will_topic = ((void*)0);
    }
    if(mud->connect_info.will_message){
      free(mud->connect_info.will_message);
      mud->connect_info.will_message = ((void*)0);
    }
    return luaL_error( L, "not enough memory");
  }
  memcpy(mud->connect_info.will_topic, lwtTopic, topicSize);
  mud->connect_info.will_topic[topicSize] = 0;
  memcpy(mud->connect_info.will_message, lwtMsg, msgSize);
  mud->connect_info.will_message[msgSize] = 0;

  if ( lua_isnumber(L, stack) )
  {
    mud->connect_info.will_qos = lua_tointeger(L, stack);
    stack++;
  }
  if ( lua_isnumber(L, stack) )
  {
    mud->connect_info.will_retain = lua_tointeger(L, stack);
    stack++;
  }

  NODE_DBG("mqtt_socket_lwt: topic: %s, message: %s, qos: %d, retain: %d\n",
      mud->connect_info.will_topic,
      mud->connect_info.will_message,
      mud->connect_info.will_qos,
      mud->connect_info.will_retain);
  NODE_DBG("leave mqtt_socket_lwt.\n");
  return 0;
}
