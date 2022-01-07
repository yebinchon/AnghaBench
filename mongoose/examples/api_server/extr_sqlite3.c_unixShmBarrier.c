
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int UNUSED_PARAMETER (int *) ;
 int unixEnterMutex () ;
 int unixLeaveMutex () ;

__attribute__((used)) static void unixShmBarrier(
  sqlite3_file *fd
){
  UNUSED_PARAMETER(fd);
  unixEnterMutex();
  unixLeaveMutex();
}
