
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;
typedef int MemJournal ;


 int SQLITE_OK ;
 int memjrnlFreeChunks (int *) ;

__attribute__((used)) static int memjrnlClose(sqlite3_file *pJfd){
  MemJournal *p = (MemJournal *)pJfd;
  memjrnlFreeChunks(p);
  return SQLITE_OK;
}
