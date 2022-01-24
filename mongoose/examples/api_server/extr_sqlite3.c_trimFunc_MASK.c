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
typedef  unsigned char u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int i64 ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned char** FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (unsigned char const*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned char const* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zIn;         /* Input string */
  const unsigned char *zCharSet;    /* Set of characters to trim */
  int nIn;                          /* Number of bytes in input */
  int flags;                        /* 1: trimleft  2: trimright  3: trim */
  int i;                            /* Loop counter */
  unsigned char *aLen = 0;          /* Length of each character in zCharSet */
  unsigned char **azChar = 0;       /* Individual characters in zCharSet */
  int nChar;                        /* Number of characters in zCharSet */

  if( FUNC10(argv[0])==SQLITE_NULL ){
    return;
  }
  zIn = FUNC9(argv[0]);
  if( zIn==0 ) return;
  nIn = FUNC8(argv[0]);
  FUNC2( zIn==FUNC9(argv[0]) );
  if( argc==1 ){
    static const unsigned char lenOne[] = { 1 };
    static unsigned char * const azOne[] = { (u8*)" " };
    nChar = 1;
    aLen = (u8*)lenOne;
    azChar = (unsigned char **)azOne;
    zCharSet = 0;
  }else if( (zCharSet = FUNC9(argv[1]))==0 ){
    return;
  }else{
    const unsigned char *z;
    for(z=zCharSet, nChar=0; *z; nChar++){
      FUNC1(z);
    }
    if( nChar>0 ){
      azChar = FUNC3(context, ((i64)nChar)*(sizeof(char*)+1));
      if( azChar==0 ){
        return;
      }
      aLen = (unsigned char*)&azChar[nChar];
      for(z=zCharSet, nChar=0; *z; nChar++){
        azChar[nChar] = (unsigned char *)z;
        FUNC1(z);
        aLen[nChar] = (u8)(z - azChar[nChar]);
      }
    }
  }
  if( nChar>0 ){
    flags = FUNC0(FUNC7(context));
    if( flags & 1 ){
      while( nIn>0 ){
        int len = 0;
        for(i=0; i<nChar; i++){
          len = aLen[i];
          if( len<=nIn && FUNC4(zIn, azChar[i], len)==0 ) break;
        }
        if( i>=nChar ) break;
        zIn += len;
        nIn -= len;
      }
    }
    if( flags & 2 ){
      while( nIn>0 ){
        int len = 0;
        for(i=0; i<nChar; i++){
          len = aLen[i];
          if( len<=nIn && FUNC4(&zIn[nIn-len],azChar[i],len)==0 ) break;
        }
        if( i>=nChar ) break;
        nIn -= len;
      }
    }
    if( zCharSet ){
      FUNC5(azChar);
    }
  }
  FUNC6(context, (char*)zIn, nIn, SQLITE_TRANSIENT);
}