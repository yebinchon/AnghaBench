
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcDisState {char const* (* instName ) (int ,int,int,int*) ;int _this; } ;


 char const* stub1 (int ,int,int,int*) ;

__attribute__((used)) static const char *
instruction_name (struct arcDisState * state,
    int op1,
    int op2,
    int * flags)
{
 if (state->instName) {
  return (*state->instName) (state->_this, op1, op2, flags);
 }
 return 0;
}
