
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ xSFunc; int nArg; int funcFlags; } ;
typedef TYPE_1__ FuncDef ;


 int FUNC_PERFECT_MATCH ;
 int SQLITE_FUNC_ENCMASK ;

__attribute__((used)) static int matchQuality(
  FuncDef *p,
  int nArg,
  u8 enc
){
  int match;


  if( nArg==(-2) ) return (p->xSFunc==0) ? 0 : FUNC_PERFECT_MATCH;


  if( p->nArg!=nArg && p->nArg>=0 ) return 0;



  if( p->nArg==nArg ){
    match = 4;
  }else{
    match = 1;
  }


  if( enc==(p->funcFlags & SQLITE_FUNC_ENCMASK) ){
    match += 2;
  }else if( (enc & p->funcFlags & 2)!=0 ){
    match += 1;
  }

  return match;
}
