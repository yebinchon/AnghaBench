
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pId; TYPE_2__* pInode; int zPath; } ;
typedef TYPE_3__ unixFile ;
typedef scalar_t__ u64 ;
struct stat {scalar_t__ st_ino; } ;
struct TYPE_5__ {scalar_t__ pId; scalar_t__ ino; } ;
struct TYPE_6__ {TYPE_1__ fileId; } ;


 scalar_t__ osStat (int ,struct stat*) ;

__attribute__((used)) static int fileHasMoved(unixFile *pFile){



  struct stat buf;
  return pFile->pInode!=0 &&
      (osStat(pFile->zPath, &buf)!=0
         || (u64)buf.st_ino!=pFile->pInode->fileId.ino);

}
