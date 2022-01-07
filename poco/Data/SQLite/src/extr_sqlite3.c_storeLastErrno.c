
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastErrno; } ;
typedef TYPE_1__ unixFile ;



__attribute__((used)) static void storeLastErrno(unixFile *pFile, int error){
  pFile->lastErrno = error;
}
