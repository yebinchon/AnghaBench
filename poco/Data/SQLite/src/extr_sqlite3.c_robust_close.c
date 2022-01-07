
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zPath; } ;
typedef TYPE_1__ unixFile ;


 int SQLITE_IOERR_CLOSE ;
 scalar_t__ osClose (int) ;
 int unixLogErrorAtLine (int ,char*,int ,int) ;

__attribute__((used)) static void robust_close(unixFile *pFile, int h, int lineno){
  if( osClose(h) ){
    unixLogErrorAtLine(SQLITE_IOERR_CLOSE, "close",
                       pFile ? pFile->zPath : 0, lineno);
  }
}
