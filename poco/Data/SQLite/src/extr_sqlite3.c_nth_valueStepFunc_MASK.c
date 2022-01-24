#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct NthValueCtx {double nStep; int /*<<< orphan*/  pValue; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  double i64 ;

/* Variables and functions */
#define  SQLITE_FLOAT 129 
#define  SQLITE_INTEGER 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 double FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **apArg
){
  struct NthValueCtx *p;
  p = (struct NthValueCtx*)FUNC1(pCtx, sizeof(*p));
  if( p ){
    i64 iVal;
    switch( FUNC7(apArg[1]) ){
      case SQLITE_INTEGER:
        iVal = FUNC6(apArg[1]);
        break;
      case SQLITE_FLOAT: {
        double fVal = FUNC4(apArg[1]);
        if( ((i64)fVal)!=fVal ) goto error_out;
        iVal = (i64)fVal;
        break;
      }
      default:
        goto error_out;
    }
    if( iVal<=0 ) goto error_out;

    p->nStep++;
    if( iVal==p->nStep ){
      p->pValue = FUNC5(apArg[0]);
      if( !p->pValue ){
        FUNC3(pCtx);
      }
    }
  }
  FUNC0(nArg);
  FUNC0(apArg);
  return;

 error_out:
  FUNC2(
      pCtx, "second argument to nth_value must be a positive integer", -1
  );
}