#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pList; } ;
struct TYPE_7__ {int flags2; TYPE_1__ x; scalar_t__ pRight; scalar_t__ pLeft; } ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int EP2_Irreducible ; 
 int EP2_MallocedToken ; 
 int /*<<< orphan*/  EP_FromJoin ; 
 int EP_Reduced ; 
 int EP_TokenOnly ; 
 int EXPRDUP_REDUCE ; 
 int EXPR_FULLSIZE ; 
 int EXPR_REDUCEDSIZE ; 
 int EXPR_TOKENONLYSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(Expr *p, int flags){
  int nSize;
  FUNC2( flags==EXPRDUP_REDUCE || flags==0 ); /* Only one flag value allowed */
  if( 0==(flags&EXPRDUP_REDUCE) ){
    nSize = EXPR_FULLSIZE;
  }else{
    FUNC2( !FUNC0(p, EP_TokenOnly|EP_Reduced) );
    FUNC2( !FUNC1(p, EP_FromJoin) ); 
    FUNC2( (p->flags2 & EP2_MallocedToken)==0 );
    FUNC2( (p->flags2 & EP2_Irreducible)==0 );
    if( p->pLeft || p->pRight || p->x.pList ){
      nSize = EXPR_REDUCEDSIZE | EP_Reduced;
    }else{
      nSize = EXPR_TOKENONLYSIZE | EP_TokenOnly;
    }
  }
  return nSize;
}