
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int checkId; scalar_t__ filterProps; scalar_t__ lzma2Props; } ;
typedef TYPE_1__ CXzProps ;


 int XZ_CHECK_CRC32 ;

void XzProps_Init(CXzProps *p)
{
  p->lzma2Props = 0;
  p->filterProps = 0;
  p->checkId = XZ_CHECK_CRC32;
}
