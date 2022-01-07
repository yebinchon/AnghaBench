
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastErrno; int h; } ;
typedef TYPE_1__ unixFile ;
typedef int i64 ;


 int seekAndWriteFd (int ,int ,void const*,int,int *) ;

__attribute__((used)) static int seekAndWrite(unixFile *id, i64 offset, const void *pBuf, int cnt){
  return seekAndWriteFd(id->h, offset, pBuf, cnt, &id->lastErrno);
}
