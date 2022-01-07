
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_MISUSE ;
 int sqlite3_log (int ,char*,char const*) ;

__attribute__((used)) static void logBadConnection(const char *zType){
  sqlite3_log(SQLITE_MISUSE,
     "API call with %s database connection pointer",
     zType
  );
}
