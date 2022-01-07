
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_log (int,char*,char const*,int,scalar_t__) ;
 scalar_t__ sqlite3_sourceid () ;

__attribute__((used)) static int reportError(int iErr, int lineno, const char *zType){
  sqlite3_log(iErr, "%s at line %d of [%.10s]",
              zType, lineno, 20+sqlite3_sourceid());
  return iErr;
}
