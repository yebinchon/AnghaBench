
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lCurrent; scalar_t__ dwUnusedBytes; int dwLastQuality; scalar_t__ lLastKey; } ;
typedef TYPE_1__ IAVIStreamImpl ;


 int ICQUALITY_HIGH ;

__attribute__((used)) static inline void AVIFILE_Reset(IAVIStreamImpl *This)
{
  This->lCurrent = -1;
  This->lLastKey = 0;
  This->dwLastQuality = ICQUALITY_HIGH;
  This->dwUnusedBytes = 0;
}
