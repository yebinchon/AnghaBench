
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sectorSize; int fd; scalar_t__ tempFile; } ;
typedef TYPE_1__ Pager ;


 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ;
 int assert (int) ;
 scalar_t__ isOpen (int ) ;
 int sqlite3OsDeviceCharacteristics (int ) ;
 int sqlite3SectorSize (int ) ;

__attribute__((used)) static void setSectorSize(Pager *pPager){
  assert( isOpen(pPager->fd) || pPager->tempFile );

  if( pPager->tempFile
   || (sqlite3OsDeviceCharacteristics(pPager->fd) &
              SQLITE_IOCAP_POWERSAFE_OVERWRITE)!=0
  ){



    pPager->sectorSize = 512;
  }else{
    pPager->sectorSize = sqlite3SectorSize(pPager->fd);
  }
}
