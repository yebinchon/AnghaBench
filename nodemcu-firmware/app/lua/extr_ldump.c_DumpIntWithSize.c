
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_6__ {void* status; } ;
typedef TYPE_1__ DumpState ;


 int DumpChar (int,TYPE_1__*) ;
 int DumpVar (int ,TYPE_1__*) ;
 void* LUA_ERR_CC_INTOVERFLOW ;
 int MaybeByteSwap (char*,int,TYPE_1__*) ;
 int lua_assert (int ) ;

__attribute__((used)) static void DumpIntWithSize(int x, int sizeof_int, DumpState* D)
{

 switch(sizeof_int) {
  case 1: {
   if (x>0x7F || x<(-0x80)) D->status=LUA_ERR_CC_INTOVERFLOW;
   DumpChar(x,D);
  } break;
  case 2: {
   if (x>0x7FFF || x<(-0x8000)) D->status=LUA_ERR_CC_INTOVERFLOW;
   int16_t y=(int16_t)x;
   MaybeByteSwap((char*)&y,2,D);
   DumpVar(y,D);
  } break;
  case 4: {

   if (x>0x7FFFFFFE || x<(-0x7FFFFFFF)) D->status=LUA_ERR_CC_INTOVERFLOW;
   int32_t y=(int32_t)x;
   MaybeByteSwap((char*)&y,4,D);
   DumpVar(y,D);
  } break;
  default: lua_assert(0);
 }
}
