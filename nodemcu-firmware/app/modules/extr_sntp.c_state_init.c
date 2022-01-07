
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int server_pos; int last_server_pos; int pcb; void* list_ref; void* err_cb_ref; void* sync_cb_ref; } ;
typedef TYPE_1__ sntp_state_t ;
typedef int lua_State ;


 scalar_t__ ERR_OK ;
 int IP_ADDR_ANY ;
 void* LUA_NOREF ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int on_recv ;
 TYPE_1__* state ;
 scalar_t__ udp_bind (int ,int ,int ) ;
 int udp_new () ;
 int udp_recv (int ,int ,int *) ;

__attribute__((used)) static char *state_init(lua_State *L) {
  state = (sntp_state_t *)malloc (sizeof (sntp_state_t));
  if (!state)
    return ("out of memory");

  memset (state, 0, sizeof (sntp_state_t));

  state->sync_cb_ref = LUA_NOREF;
  state->err_cb_ref = LUA_NOREF;
  state->list_ref = LUA_NOREF;

  state->pcb = udp_new ();
  if (!state->pcb)
    return ("out of memory");

  if (udp_bind (state->pcb, IP_ADDR_ANY, 0) != ERR_OK)
    return ("no port available");

  udp_recv (state->pcb, on_recv, L);

  state->server_pos = -1;
  state->last_server_pos = -1;

  return ((void*)0);
}
