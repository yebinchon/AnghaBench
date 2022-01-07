
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* sqlite3ErrStr (int) ;

const char *sqlite3_errstr(int rc){
  return sqlite3ErrStr(rc);
}
