
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int pVfs; } ;
typedef TYPE_1__ sqlite3 ;


 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_EXCLUSIVE ;
 int SQLITE_OPEN_READWRITE ;
 int SQLITE_OPEN_TEMP_JOURNAL ;
 int sqlite3OsOpenMalloc (int ,int ,int **,int,int*) ;

__attribute__((used)) static int vdbeSorterOpenTempFile(sqlite3 *db, sqlite3_file **ppFile){
  int dummy;
  return sqlite3OsOpenMalloc(db->pVfs, 0, ppFile,
      SQLITE_OPEN_TEMP_JOURNAL |
      SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE |
      SQLITE_OPEN_EXCLUSIVE | SQLITE_OPEN_DELETEONCLOSE, &dummy
  );
}
