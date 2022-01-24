#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ i64 ;
struct TYPE_6__ {scalar_t__ nChar; scalar_t__ nAlloc; scalar_t__ accError; scalar_t__ mxAlloc; char* zText; char* zBase; int /*<<< orphan*/  printfFlags; scalar_t__ db; } ;
typedef  TYPE_1__ StrAccum ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_PRINTF_MALLOCED ; 
 scalar_t__ STRACCUM_NOMEM ; 
 scalar_t__ STRACCUM_TOOBIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int FUNC4 (scalar_t__,char*) ; 
 char* FUNC5 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(StrAccum *p, int N){
  char *zNew;
  FUNC0( p->nChar+(i64)N >= p->nAlloc ); /* Only called if really needed */
  if( p->accError ){
    FUNC8(p->accError==STRACCUM_TOOBIG);
    FUNC8(p->accError==STRACCUM_NOMEM);
    return 0;
  }
  if( p->mxAlloc==0 ){
    N = p->nAlloc - p->nChar - 1;
    FUNC3(p, STRACCUM_TOOBIG);
    return N;
  }else{
    char *zOld = FUNC1(p) ? p->zText : 0;
    i64 szNew = p->nChar;
    FUNC0( (p->zText==0 || p->zText==p->zBase)==!FUNC1(p) );
    szNew += N + 1;
    if( szNew+p->nChar<=p->mxAlloc ){
      /* Force exponential buffer size growth as long as it does not overflow,
      ** to avoid having to call this routine too often */
      szNew += p->nChar;
    }
    if( szNew > p->mxAlloc ){
      FUNC6(p);
      FUNC3(p, STRACCUM_TOOBIG);
      return 0;
    }else{
      p->nAlloc = (int)szNew;
    }
    if( p->db ){
      zNew = FUNC5(p->db, zOld, p->nAlloc);
    }else{
      zNew = FUNC7(zOld, p->nAlloc);
    }
    if( zNew ){
      FUNC0( p->zText!=0 || p->nChar==0 );
      if( !FUNC1(p) && p->nChar>0 ) FUNC2(zNew, p->zText, p->nChar);
      p->zText = zNew;
      p->nAlloc = FUNC4(p->db, zNew);
      p->printfFlags |= SQLITE_PRINTF_MALLOCED;
    }else{
      FUNC6(p);
      FUNC3(p, STRACCUM_NOMEM);
      return 0;
    }
  }
  return N;
}