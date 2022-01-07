
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_MUTEX_STATIC_VFS1 ;
 int sqlite3MutexAlloc (int ) ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static void unixLeaveMutex(void){
  sqlite3_mutex_leave(sqlite3MutexAlloc(SQLITE_MUTEX_STATIC_VFS1));
}
