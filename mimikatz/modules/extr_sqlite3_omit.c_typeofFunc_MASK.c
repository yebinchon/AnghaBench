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

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int SQLITE_BLOB ; 
 int SQLITE_FLOAT ; 
 int SQLITE_INTEGER ; 
 int SQLITE_NULL ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int SQLITE_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  static const char *azType[] = { "integer", "real", "text", "blob", "null" };
  int i = FUNC4(argv[0]) - 1;
  FUNC1(NotUsed);
  FUNC2( i>=0 && i<FUNC0(azType) );
  FUNC2( SQLITE_INTEGER==1 );
  FUNC2( SQLITE_FLOAT==2 );
  FUNC2( SQLITE_TEXT==3 );
  FUNC2( SQLITE_BLOB==4 );
  FUNC2( SQLITE_NULL==5 );
  /* EVIDENCE-OF: R-01470-60482 The sqlite3_value_type(V) interface returns
  ** the datatype code for the initial datatype of the sqlite3_value object
  ** V. The returned value is one of SQLITE_INTEGER, SQLITE_FLOAT,
  ** SQLITE_TEXT, SQLITE_BLOB, or SQLITE_NULL. */
  FUNC3(context, azType[i], -1, SQLITE_STATIC);
}