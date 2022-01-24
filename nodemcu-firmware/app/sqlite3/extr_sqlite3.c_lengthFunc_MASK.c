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
 int /*<<< orphan*/  FUNC0 (unsigned char const*) ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int len;

  FUNC2( argc==1 );
  FUNC1(argc);
  switch( FUNC7(argv[0]) ){
    case SQLITE_BLOB:
    case SQLITE_INTEGER:
    case SQLITE_FLOAT: {
      FUNC3(context, FUNC5(argv[0]));
      break;
    }
    case SQLITE_TEXT: {
      const unsigned char *z = FUNC6(argv[0]);
      if( z==0 ) return;
      len = 0;
      while( *z ){
        len++;
        FUNC0(z);
      }
      FUNC3(context, len);
      break;
    }
    default: {
      FUNC4(context);
      break;
    }
  }
}