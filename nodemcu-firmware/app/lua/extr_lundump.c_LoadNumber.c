
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_Number ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_4__ {int numsize; scalar_t__ toflt; } ;
typedef TYPE_1__ LoadState ;


 int LoadVar (TYPE_1__*,int ) ;
 int lua_assert (int ) ;

__attribute__((used)) static lua_Number LoadNumber(LoadState* S)
{
 lua_Number x;
 if(S->toflt)
 {
  switch(S->numsize)
  {
   case 1: {
    int8_t y;
    LoadVar(S,y);
    x = (lua_Number)y;
   } break;
   case 2: {
    int16_t y;
    LoadVar(S,y);
    x = (lua_Number)y;
   } break;
   case 4: {
    int32_t y;
    LoadVar(S,y);
    x = (lua_Number)y;
   } break;
   case 8: {
    int64_t y;
    LoadVar(S,y);
    x = (lua_Number)y;
   } break;
   default: lua_assert(0);
  }
 }
 else
 {
  LoadVar(S,x);
 }
 return x;
}
