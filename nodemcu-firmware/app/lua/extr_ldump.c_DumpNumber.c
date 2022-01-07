
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef float lua_Number ;
struct TYPE_7__ {int sizeof_lua_Number; int is_arm_fpa; scalar_t__ lua_Number_integral; } ;
struct TYPE_8__ {TYPE_1__ target; int status; } ;
typedef TYPE_2__ DumpState ;


 int DumpIntWithSize (float,int,TYPE_2__*) ;
 int DumpVar (double,TYPE_2__*) ;
 int LUA_ERR_CC_NOTINTEGER ;
 int MaybeByteSwap (char*,int,TYPE_2__*) ;
 int lua_assert (int ) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void DumpNumber(lua_Number x, DumpState* D)
{



 if (D->target.lua_Number_integral)
 {
  if (((float)(int)x)!=x) D->status=LUA_ERR_CC_NOTINTEGER;
  DumpIntWithSize(x,D->target.sizeof_lua_Number,D);
 }
 else
 {
  switch(D->target.sizeof_lua_Number)
  {

   case 4: {
    float y=x;
    MaybeByteSwap((char*)&y,4,D);
    DumpVar(y,D);
   } break;
   case 8: {
    double y=x;



    if(D->target.is_arm_fpa)
    {
      char *pnum=(char*)&y, temp[4];
      memcpy(temp,pnum,4);
      memcpy(pnum,pnum+4,4);
      memcpy(pnum+4,temp,4);
    }
    MaybeByteSwap((char*)&y,8,D);
    DumpVar(y,D);
   } break;
   default: lua_assert(0);
  }
 }

}
