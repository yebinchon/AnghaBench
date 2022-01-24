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
#define  SQLITE_BLOB 131 
#define  SQLITE_FLOAT 130 
#define  SQLITE_INTEGER 129 
 int /*<<< orphan*/  SQLITE_STATIC ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **argv
){
  const char *z = 0;
  FUNC0(NotUsed);
  switch( FUNC2(argv[0]) ){
    case SQLITE_INTEGER: z = "integer"; break;
    case SQLITE_TEXT:    z = "text";    break;
    case SQLITE_FLOAT:   z = "real";    break;
    case SQLITE_BLOB:    z = "blob";    break;
    default:             z = "null";    break;
  }
  FUNC1(context, z, -1, SQLITE_STATIC);
}