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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  CollSeq ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int i;
  int mask;    /* 0 for min() or 0xffffffff for max() */
  int iBest;
  CollSeq *pColl;

  FUNC0( argc>1 );
  mask = FUNC4(context)==0 ? 0 : -1;
  pColl = FUNC1(context);
  FUNC0( *pColl );
  FUNC0( mask==-1 || mask==0 );
  iBest = 0;
  if( FUNC5(argv[0])==SQLITE_NULL ) return;
  for(i=1; i<argc; i++){
    if( FUNC5(argv[i])==SQLITE_NULL ) return;
    if( (FUNC2(argv[iBest], argv[i], pColl)^mask)>=0 ){
      FUNC6( mask==0 );
      iBest = i;
    }
  }
  FUNC3(context, argv[iBest]);
}