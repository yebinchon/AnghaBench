
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sectorSize; int deviceCharacteristics; int ctrlFlags; } ;
typedef TYPE_1__ unixFile ;
typedef int sqlite3_file ;


 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ;
 int UNIXFILE_PSOW ;
 int unixSectorSize (int *) ;

__attribute__((used)) static int unixDeviceCharacteristics(sqlite3_file *id){
  unixFile *p = (unixFile*)id;
  int rc = 0;




  if( p->ctrlFlags & UNIXFILE_PSOW ){
    rc |= SQLITE_IOCAP_POWERSAFE_OVERWRITE;
  }
  return rc;
}
