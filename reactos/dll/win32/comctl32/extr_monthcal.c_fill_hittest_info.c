
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int cbSize; int uHit; int rc; int st; } ;
typedef TYPE_1__ MCHITTESTINFO ;


 scalar_t__ MCHITTESTINFO_V1_SIZE ;
 int memcpy (int *,int *,scalar_t__) ;

__attribute__((used)) static inline UINT fill_hittest_info(const MCHITTESTINFO *src, MCHITTESTINFO *dest)
{
  dest->uHit = src->uHit;
  dest->st = src->st;

  if (dest->cbSize == sizeof(MCHITTESTINFO))
    memcpy(&dest->rc, &src->rc, sizeof(MCHITTESTINFO) - MCHITTESTINFO_V1_SIZE);

  return src->uHit;
}
