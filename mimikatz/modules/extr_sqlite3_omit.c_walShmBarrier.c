
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ exclusiveMode; int pDbFd; } ;
typedef TYPE_1__ Wal ;


 scalar_t__ WAL_HEAPMEMORY_MODE ;
 int sqlite3OsShmBarrier (int ) ;

__attribute__((used)) static void walShmBarrier(Wal *pWal){
  if( pWal->exclusiveMode!=WAL_HEAPMEMORY_MODE ){
    sqlite3OsShmBarrier(pWal->pDbFd);
  }
}
