
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nFetchOut; scalar_t__ mmapSizeMax; scalar_t__ mmapSize; int h; } ;
typedef TYPE_1__ unixFile ;
struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ i64 ;


 int SQLITE_IOERR_FSTAT ;
 int SQLITE_OK ;
 int assert (int) ;
 int osFstat (int ,struct stat*) ;
 int unixRemapfile (TYPE_1__*,scalar_t__) ;
 int unixUnmapfile (TYPE_1__*) ;

__attribute__((used)) static int unixMapfile(unixFile *pFd, i64 nByte){
  return SQLITE_OK;
}
