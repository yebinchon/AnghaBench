
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ lua_Number ;
struct TYPE_4__ {int swap; char numsize; int toflt; } ;
typedef TYPE_1__ LoadState ;


 int IF (int,char*) ;
 int LUAC_HEADERSIZE ;
 int LoadBlock (TYPE_1__*,char*,int) ;
 int luaU_header (char*) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static void LoadHeader(LoadState* S)
{
 char h[LUAC_HEADERSIZE];
 char s[LUAC_HEADERSIZE];
 int intck = (((lua_Number)0.5)==0);
 luaU_header(h);
 LoadBlock(S,s,LUAC_HEADERSIZE);
 S->swap=(s[6]!=h[6]); s[6]=h[6];
 S->numsize=h[10]=s[10];
 S->toflt=(s[11]>intck);
 if(S->toflt) s[11]=h[11];
 IF (memcmp(h,s,LUAC_HEADERSIZE)!=0, "bad header");
}
