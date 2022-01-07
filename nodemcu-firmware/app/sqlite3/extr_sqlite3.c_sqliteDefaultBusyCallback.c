
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int busyTimeout; int pVfs; } ;
typedef TYPE_1__ sqlite3 ;


 int NDELAY ;
 int assert (int) ;
 int sqlite3OsSleep (int ,int) ;

__attribute__((used)) static int sqliteDefaultBusyCallback(
 void *ptr,
 int count
){
  sqlite3 *db = (sqlite3 *)ptr;
  int timeout = ((sqlite3 *)ptr)->busyTimeout;
  if( (count+1)*1000 > timeout ){
    return 0;
  }
  sqlite3OsSleep(db->pVfs, 1000000);
  return 1;

}
