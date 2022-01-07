
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int deviceCharacteristics; } ;
typedef TYPE_1__ unixFile ;
typedef int sqlite3_file ;


 int setDeviceCharacteristics (TYPE_1__*) ;

__attribute__((used)) static int unixDeviceCharacteristics(sqlite3_file *id){
  unixFile *pFd = (unixFile*)id;
  setDeviceCharacteristics(pFd);
  return pFd->deviceCharacteristics;
}
