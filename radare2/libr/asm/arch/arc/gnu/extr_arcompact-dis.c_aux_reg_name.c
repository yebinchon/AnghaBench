
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcDisState {char const* (* auxRegName ) (int ,int) ;int _this; } ;


 char const* stub1 (int ,int) ;

__attribute__((used)) static const char *
aux_reg_name(struct arcDisState *state, int val)
{
 if (state->auxRegName) {
  return (*state->auxRegName) (state->_this, val);
 }
 return 0;
}
