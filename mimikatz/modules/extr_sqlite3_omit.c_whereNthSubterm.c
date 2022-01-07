
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* pAndInfo; } ;
struct TYPE_10__ {scalar_t__ eOperator; TYPE_3__ u; } ;
typedef TYPE_4__ WhereTerm ;
struct TYPE_7__ {int nTerm; TYPE_4__* a; } ;
struct TYPE_8__ {TYPE_1__ wc; } ;


 scalar_t__ WO_AND ;

__attribute__((used)) static WhereTerm *whereNthSubterm(WhereTerm *pTerm, int N){
  if( pTerm->eOperator!=WO_AND ){
    return N==0 ? pTerm : 0;
  }
  if( N<pTerm->u.pAndInfo->wc.nTerm ){
    return &pTerm->u.pAndInfo->wc.a[N];
  }
  return 0;
}
