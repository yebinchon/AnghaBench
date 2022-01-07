
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dbSize; int sectorSize; int pageSize; int fd; } ;
typedef TYPE_1__ Pager ;


 int JOURNAL_HDR_SZ (TYPE_1__*) ;
 int JOURNAL_PG_SZ (TYPE_1__*) ;
 int MEMDB ;
 int SQLITE_IOCAP_ATOMIC ;
 int SQLITE_IOCAP_ATOMIC512 ;
 int SQLITE_IOCAP_ATOMIC64K ;
 int SQLITE_IOCAP_BATCH_ATOMIC ;
 int UNUSED_PARAMETER (TYPE_1__*) ;
 int assert (int) ;
 int isOpen (int ) ;
 int sqlite3OsDeviceCharacteristics (int ) ;

__attribute__((used)) static int jrnlBufferSize(Pager *pPager){
  assert( !MEMDB );
  UNUSED_PARAMETER(pPager);
  return 0;
}
