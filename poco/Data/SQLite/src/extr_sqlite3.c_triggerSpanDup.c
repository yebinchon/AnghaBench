
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 char* sqlite3DbSpanDup (int *,char const*,char const*) ;
 scalar_t__ sqlite3Isspace (char) ;

__attribute__((used)) static char *triggerSpanDup(sqlite3 *db, const char *zStart, const char *zEnd){
  char *z = sqlite3DbSpanDup(db, zStart, zEnd);
  int i;
  if( z ) for(i=0; z[i]; i++) if( sqlite3Isspace(z[i]) ) z[i] = ' ';
  return z;
}
