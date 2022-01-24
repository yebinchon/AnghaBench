#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {scalar_t__* aLimit; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  scalar_t__ i64 ;

/* Variables and functions */
 size_t SQLITE_LIMIT_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  i64 n;
  sqlite3 *db = FUNC2(context);
  FUNC1( argc==1 );
  FUNC0(argc);
  n = FUNC5(argv[0]);
  FUNC6( n==db->aLimit[SQLITE_LIMIT_LENGTH] );
  FUNC6( n==db->aLimit[SQLITE_LIMIT_LENGTH]+1 );
  if( n>db->aLimit[SQLITE_LIMIT_LENGTH] ){
    FUNC3(context);
  }else{
    FUNC4(context, (int)n); /* IMP: R-00293-64994 */
  }
}