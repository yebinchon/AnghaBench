
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {double i; double r; } ;
struct TYPE_9__ {int flags; TYPE_1__ u; } ;
struct TYPE_8__ {char* zText; scalar_t__ mxAlloc; size_t nChar; } ;
typedef TYPE_2__ StrAccum ;
typedef TYPE_3__ Mem ;


 int MEM_Int ;
 int MEM_IntReal ;
 int MEM_Real ;
 int assert (int) ;
 int sqlite3StrAccumInit (TYPE_2__*,int ,char*,int,int ) ;
 int sqlite3_str_appendf (TYPE_2__*,char*,double) ;

__attribute__((used)) static void vdbeMemRenderNum(int sz, char *zBuf, Mem *p){
  StrAccum acc;
  assert( p->flags & (MEM_Int|MEM_Real|MEM_IntReal) );
  sqlite3StrAccumInit(&acc, 0, zBuf, sz, 0);
  if( p->flags & MEM_Int ){
    sqlite3_str_appendf(&acc, "%lld", p->u.i);
  }else if( p->flags & MEM_IntReal ){
    sqlite3_str_appendf(&acc, "%!.15g", (double)p->u.i);
  }else{
    sqlite3_str_appendf(&acc, "%!.15g", p->u.r);
  }
  assert( acc.zText==zBuf && acc.mxAlloc<=0 );
  zBuf[acc.nChar] = 0;
}
