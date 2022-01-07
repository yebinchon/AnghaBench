
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_5__ {int L; int Z; int b; } ;
typedef int TString ;
typedef TYPE_1__ LoadState ;


 int LoadBlock (TYPE_1__*,char*,scalar_t__) ;
 int LoadVar (TYPE_1__*,scalar_t__) ;
 int * luaS_newlstr (int ,char*,scalar_t__) ;
 int luaZ_direct_mode (int ) ;
 scalar_t__ luaZ_get_crt_address (int ) ;
 char* luaZ_openspace (int ,int ,scalar_t__) ;

__attribute__((used)) static TString* LoadString(LoadState* S)
{
 int32_t size;
 LoadVar(S,size);
 if (size==0)
  return ((void*)0);
 else
 {
  char* s;
  if (!luaZ_direct_mode(S->Z)) {
   s = luaZ_openspace(S->L,S->b,size);
   LoadBlock(S,s,size);
   return luaS_newlstr(S->L,s,size-1);
  } else {
   s = (char*)luaZ_get_crt_address(S->Z);
   LoadBlock(S,((void*)0),size);
   return luaS_newlstr(S->L,s,size-1);
  }
 }
}
