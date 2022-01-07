
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcDisState {char const* (* coreRegName ) (int ,int) ;int _this; } ;


 char const* stub1 (int ,int) ;

__attribute__((used)) static const char *
core_reg_name(struct arcDisState *state, int val)
{
 if (state->coreRegName) {
  return (*state->coreRegName) (state->_this, val);
 }
 return 0;
}
