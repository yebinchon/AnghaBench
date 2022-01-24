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
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int LARGEST_INT64 ; 
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 double FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(sqlite3_context *context, int argc, sqlite3_value **argv){
  int n = 0;
  double r;
  char *zBuf;
  FUNC0( argc==1 || argc==2 );
  if( argc==2 ){
    if( SQLITE_NULL==FUNC9(argv[1]) ) return;
    n = FUNC8(argv[1]);
    if( n>30 ) n = 30;
    if( n<0 ) n = 0;
  }
  if( FUNC9(argv[0])==SQLITE_NULL ) return;
  r = FUNC7(argv[0]);
  /* If Y==0 and X will fit in a 64-bit int,
  ** handle the rounding directly,
  ** otherwise use printf.
  */
  if( n==0 && r>=0 && r<LARGEST_INT64-1 ){
    r = (double)((sqlite_int64)(r+0.5));
  }else if( n==0 && r<0 && (-r)<LARGEST_INT64-1 ){
    r = -(double)((sqlite_int64)((-r)+0.5));
  }else{
    zBuf = FUNC4("%.*f",n,r);
    if( zBuf==0 ){
      FUNC6(context);
      return;
    }
    FUNC1(zBuf, &r, FUNC2(zBuf), SQLITE_UTF8);
    FUNC3(zBuf);
  }
  FUNC5(context, r);
}