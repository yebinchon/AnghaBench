
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pos; scalar_t__ fileLen; int AH; } ;
typedef TYPE_1__ TAR_MEMBER ;


 size_t _tarReadRaw (int ,void*,size_t,TYPE_1__*,int *) ;

__attribute__((used)) static size_t
tarRead(void *buf, size_t len, TAR_MEMBER *th)
{
 size_t res;

 if (th->pos + len > th->fileLen)
  len = th->fileLen - th->pos;

 if (len <= 0)
  return 0;

 res = _tarReadRaw(th->AH, buf, len, th, ((void*)0));

 th->pos += res;

 return res;
}
