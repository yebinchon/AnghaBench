
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int sizeof_strsize_t; } ;
struct TYPE_8__ {void* status; TYPE_1__ target; } ;
typedef TYPE_2__ DumpState ;


 int DumpChar (int,TYPE_2__*) ;
 int DumpVar (int,TYPE_2__*) ;
 void* LUA_ERR_CC_INTOVERFLOW ;
 int MaybeByteSwap (char*,int,TYPE_2__*) ;
 int lua_assert (int ) ;

__attribute__((used)) static void DumpSize(uint32_t x, DumpState* D)
{

 switch(D->target.sizeof_strsize_t) {
  case 1: {
   if (x>0xFF) D->status=LUA_ERR_CC_INTOVERFLOW;
   DumpChar(x,D);
  } break;
  case 2: {
   if (x>0xFFFF) D->status=LUA_ERR_CC_INTOVERFLOW;
   uint16_t y=(uint16_t)x;
   MaybeByteSwap((char*)&y,2,D);
   DumpVar(y,D);
  } break;
  case 4: {

   if (x>0xFFFFFFFE) D->status=LUA_ERR_CC_INTOVERFLOW;
   uint32_t y=x;
   MaybeByteSwap((char*)&y,4,D);
   DumpVar(y,D);
  } break;
  default: lua_assert(0);
 }
}
