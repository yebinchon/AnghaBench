
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_4__ {int pVfs; } ;
typedef TYPE_1__ sqlite3 ;
typedef scalar_t__ i64 ;


 int SQLITE_FCNTL_MMAP_SIZE ;
 int SQLITE_IOERR_ACCESS ;
 scalar_t__ SQLITE_MAX_MMAP_SIZE ;
 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_EXCLUSIVE ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_TEMP_JOURNAL ;
 scalar_t__ sqlite3FaultSim (int) ;
 int sqlite3OsFileControlHint (int *,int ,void*) ;
 int sqlite3OsOpenMalloc (int ,int ,int **,int,int*) ;
 int vdbeSorterExtendFile (TYPE_1__*,int *,scalar_t__) ;

__attribute__((used)) static int vdbeSorterOpenTempFile(
  sqlite3 *db,
  i64 nExtend,
  sqlite3_file **ppFd
){
  int rc;
  if( sqlite3FaultSim(202) ) return SQLITE_IOERR_ACCESS;
  rc = sqlite3OsOpenMalloc(db->pVfs, 0, ppFd,
      SQLITE_OPEN_TEMP_JOURNAL |
      SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE |
      SQLITE_OPEN_EXCLUSIVE | SQLITE_OPEN_DELETEONCLOSE, &rc
  );
  if( rc==SQLITE_OK ){
    i64 max = SQLITE_MAX_MMAP_SIZE;
    sqlite3OsFileControlHint(*ppFd, SQLITE_FCNTL_MMAP_SIZE, (void*)&max);
    if( nExtend>0 ){
      vdbeSorterExtendFile(db, *ppFd, nExtend);
    }
  }
  return rc;
}
