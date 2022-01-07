
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int sqlite3_file ;
typedef int i64 ;
typedef int ac ;


 int SQLITE_OK ;
 int sqlite3Get4byte (unsigned char*) ;
 int sqlite3OsRead (int *,unsigned char*,int,int ) ;

__attribute__((used)) static int read32bits(sqlite3_file *fd, i64 offset, u32 *pRes){
  unsigned char ac[4];
  int rc = sqlite3OsRead(fd, ac, sizeof(ac), offset);
  if( rc==SQLITE_OK ){
    *pRes = sqlite3Get4byte(ac);
  }
  return rc;
}
