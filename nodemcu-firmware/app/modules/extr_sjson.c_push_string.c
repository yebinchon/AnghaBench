
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct jsonsl_state_st {int pos_cur; int pos_begin; } ;
typedef int luaL_Buffer ;
struct TYPE_4__ {int L; } ;
typedef TYPE_1__ JSN_DATA ;


 int fromhex (char const) ;
 char* get_state_buffer (TYPE_1__*,struct jsonsl_state_st*) ;
 int luaL_buffinit (int ,int *) ;
 int luaL_pushresult (int *) ;
 int luaL_putchar (int *,int) ;
 int output_utf8 (int *,int) ;

__attribute__((used)) static void push_string(JSN_DATA *data, struct jsonsl_state_st *state) {
  luaL_Buffer b;
  luaL_buffinit(data->L, &b);
  int i;
  const char *c = get_state_buffer(data, state) + 1;
  for (i = 0; i < state->pos_cur - state->pos_begin - 1; i++) {
    int nc = c[i];
    if (nc == '\\') {
      i++;
      nc = c[i] & 255;
      switch (c[i]) {
        case 'b':
          nc = '\b';
          break;
        case 'f':
          nc = '\f';
          break;
        case 'n':
          nc = '\n';
          break;
        case 'r':
          nc = '\r';
          break;
        case 't':
          nc = '\t';
          break;
        case 'u':
          nc = fromhex(c[++i]) << 12;
          nc += fromhex(c[++i]) << 8;
          nc += fromhex(c[++i]) << 4;
          nc += fromhex(c[++i]) ;
          output_utf8(&b, nc);
          continue;
      }
    }
    luaL_putchar(&b, nc);
  }
  luaL_pushresult(&b);
}
