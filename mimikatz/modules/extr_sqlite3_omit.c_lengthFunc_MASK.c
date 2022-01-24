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
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  FUNC1( argc==1 );
  FUNC0(argc);
  switch( FUNC6(argv[0]) ){
    case SQLITE_BLOB:
    case SQLITE_INTEGER:
    case SQLITE_FLOAT: {
      FUNC2(context, FUNC4(argv[0]));
      break;
    }
    case SQLITE_TEXT: {
      const unsigned char *z = FUNC5(argv[0]);
      const unsigned char *z0;
      unsigned char c;
      if( z==0 ) return;
      z0 = z;
      while( (c = *z)!=0 ){
        z++;
        if( c>=0xc0 ){
          while( (*z & 0xc0)==0x80 ){ z++; z0++; }
        }
      }
      FUNC2(context, (int)(z-z0));
      break;
    }
    default: {
      FUNC3(context);
      break;
    }
  }
}