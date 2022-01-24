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
typedef  int /*<<< orphan*/  i64 ;

/* Variables and functions */
 int /*<<< orphan*/  SMALLEST_INT64 ; 
#define  SQLITE_INTEGER 129 
#define  SQLITE_NULL 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 double FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(sqlite3_context *context, int argc, sqlite3_value **argv){
  FUNC1( argc==1 );
  FUNC0(argc);
  switch( FUNC8(argv[0]) ){
    case SQLITE_INTEGER: {
      i64 iVal = FUNC7(argv[0]);
      if( iVal<0 ){
        if( iVal==SMALLEST_INT64 ){
          /* IMP: R-31676-45509 If X is the integer -9223372036854775808
          ** then abs(X) throws an integer overflow error since there is no
          ** equivalent positive 64-bit two complement value. */
          FUNC3(context, "integer overflow", -1);
          return;
        }
        iVal = -iVal;
      }
      FUNC4(context, iVal);
      break;
    }
    case SQLITE_NULL: {
      /* IMP: R-37434-19929 Abs(X) returns NULL if X is NULL. */
      FUNC5(context);
      break;
    }
    default: {
      /* Because sqlite3_value_double() returns 0.0 if the argument is not
      ** something that can be converted into a number, we have:
      ** IMP: R-01992-00519 Abs(X) returns 0.0 if X is a string or blob
      ** that cannot be converted to a numeric value.
      */
      double rVal = FUNC6(argv[0]);
      if( rVal<0 ) rVal = -rVal;
      FUNC2(context, rVal);
      break;
    }
  }
}