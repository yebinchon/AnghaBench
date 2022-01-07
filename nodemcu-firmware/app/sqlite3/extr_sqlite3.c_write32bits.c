
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int sqlite3_file ;
typedef int i64 ;


 int put32bits (char*,int ) ;
 int sqlite3OsWrite (int *,char*,int,int ) ;

__attribute__((used)) static int write32bits(sqlite3_file *fd, i64 offset, u32 val){
  char ac[4];
  put32bits(ac, val);
  return sqlite3OsWrite(fd, ac, 4, offset);
}
