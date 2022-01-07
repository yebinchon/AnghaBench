
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lastline; unsigned char* lastlineOffset; int pc; TYPE_1__* f; } ;
struct TYPE_6__ {int packedlineinfo; int* lineinfo; } ;
typedef TYPE_2__ FuncState ;


 unsigned char INFO_DELTA_6BITS ;
 unsigned char INFO_DELTA_7BITS ;
 unsigned char INFO_DELTA_MASK ;
 void* INFO_FILL_BYTE ;
 unsigned char INFO_SIGN_MASK ;
 int generateInfoDeltaLine (TYPE_2__*,int) ;
 unsigned char* lineInfoTop (TYPE_2__*) ;
 int lua_assert (int) ;

void luaK_fixline (FuncState *fs, int line) {
   fs->f->lineinfo[fs->pc - 1] = line;

}
