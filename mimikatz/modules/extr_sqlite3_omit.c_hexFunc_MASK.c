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
typedef  int i64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void** hexdigits ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 unsigned char const* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int i, n;
  const unsigned char *pBlob;
  char *zHex, *z;
  FUNC1( argc==1 );
  FUNC0(argc);
  pBlob = FUNC4(argv[0]);
  n = FUNC5(argv[0]);
  FUNC1( pBlob==FUNC4(argv[0]) );  /* No encoding change */
  z = zHex = FUNC2(context, ((i64)n)*2 + 1);
  if( zHex ){
    for(i=0; i<n; i++, pBlob++){
      unsigned char c = *pBlob;
      *(z++) = hexdigits[(c>>4)&0xf];
      *(z++) = hexdigits[c&0xf];
    }
    *z = 0;
    FUNC3(context, zHex, n*2, sqlite3_free);
  }
}