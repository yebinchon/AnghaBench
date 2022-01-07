
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct compareInfo {int matchOne; int matchAll; char noCase; scalar_t__ matchSet; } ;


 int SQLITE_MATCH ;
 int SQLITE_NOMATCH ;
 int SQLITE_NOWILDCARDMATCH ;
 int SQLITE_SKIP_UTF8 (char const*) ;
 int Utf8Read (char const*) ;
 int assert (int) ;
 int sqlite3Tolower (int) ;
 int sqlite3Toupper (int) ;
 int sqlite3Utf8Read (char const**) ;

__attribute__((used)) static int patternCompare(
  const u8 *zPattern,
  const u8 *zString,
  const struct compareInfo *pInfo,
  u32 matchOther
){
  u32 c, c2;
  u32 matchOne = pInfo->matchOne;
  u32 matchAll = pInfo->matchAll;
  u8 noCase = pInfo->noCase;
  const u8 *zEscaped = 0;

  while( (c = Utf8Read(zPattern))!=0 ){
    if( c==matchAll ){



      while( (c=Utf8Read(zPattern)) == matchAll || c == matchOne ){
        if( c==matchOne && sqlite3Utf8Read(&zString)==0 ){
          return SQLITE_NOWILDCARDMATCH;
        }
      }
      if( c==0 ){
        return SQLITE_MATCH;
      }else if( c==matchOther ){
        if( pInfo->matchSet==0 ){
          c = sqlite3Utf8Read(&zPattern);
          if( c==0 ) return SQLITE_NOWILDCARDMATCH;
        }else{


          assert( matchOther<0x80 );
          while( *zString ){
            int bMatch = patternCompare(&zPattern[-1],zString,pInfo,matchOther);
            if( bMatch!=SQLITE_NOMATCH ) return bMatch;
            SQLITE_SKIP_UTF8(zString);
          }
          return SQLITE_NOWILDCARDMATCH;
        }
      }
      if( c<=0x80 ){
        u32 cx;
        int bMatch;
        if( noCase ){
          cx = sqlite3Toupper(c);
          c = sqlite3Tolower(c);
        }else{
          cx = c;
        }
        while( (c2 = *(zString++))!=0 ){
          if( c2!=c && c2!=cx ) continue;
          bMatch = patternCompare(zPattern,zString,pInfo,matchOther);
          if( bMatch!=SQLITE_NOMATCH ) return bMatch;
        }
      }else{
        int bMatch;
        while( (c2 = Utf8Read(zString))!=0 ){
          if( c2!=c ) continue;
          bMatch = patternCompare(zPattern,zString,pInfo,matchOther);
          if( bMatch!=SQLITE_NOMATCH ) return bMatch;
        }
      }
      return SQLITE_NOWILDCARDMATCH;
    }
    if( c==matchOther ){
      if( pInfo->matchSet==0 ){
        c = sqlite3Utf8Read(&zPattern);
        if( c==0 ) return SQLITE_NOMATCH;
        zEscaped = zPattern;
      }else{
        u32 prior_c = 0;
        int seen = 0;
        int invert = 0;
        c = sqlite3Utf8Read(&zString);
        if( c==0 ) return SQLITE_NOMATCH;
        c2 = sqlite3Utf8Read(&zPattern);
        if( c2=='^' ){
          invert = 1;
          c2 = sqlite3Utf8Read(&zPattern);
        }
        if( c2==']' ){
          if( c==']' ) seen = 1;
          c2 = sqlite3Utf8Read(&zPattern);
        }
        while( c2 && c2!=']' ){
          if( c2=='-' && zPattern[0]!=']' && zPattern[0]!=0 && prior_c>0 ){
            c2 = sqlite3Utf8Read(&zPattern);
            if( c>=prior_c && c<=c2 ) seen = 1;
            prior_c = 0;
          }else{
            if( c==c2 ){
              seen = 1;
            }
            prior_c = c2;
          }
          c2 = sqlite3Utf8Read(&zPattern);
        }
        if( c2==0 || (seen ^ invert)==0 ){
          return SQLITE_NOMATCH;
        }
        continue;
      }
    }
    c2 = Utf8Read(zString);
    if( c==c2 ) continue;
    if( noCase && sqlite3Tolower(c)==sqlite3Tolower(c2) && c<0x80 && c2<0x80 ){
      continue;
    }
    if( c==matchOne && zPattern!=zEscaped && c2!=0 ) continue;
    return SQLITE_NOMATCH;
  }
  return *zString==0 ? SQLITE_MATCH : SQLITE_NOMATCH;
}
