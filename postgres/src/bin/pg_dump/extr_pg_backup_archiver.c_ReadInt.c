
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ version; int (* ReadBytePtr ) (TYPE_1__*) ;int intSize; } ;
typedef TYPE_1__ ArchiveHandle ;


 scalar_t__ K_VERS_1_0 ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;

int
ReadInt(ArchiveHandle *AH)
{
 int res = 0;
 int bv,
    b;
 int sign = 0;
 int bitShift = 0;

 if (AH->version > K_VERS_1_0)

  sign = AH->ReadBytePtr(AH);

 for (b = 0; b < AH->intSize; b++)
 {
  bv = AH->ReadBytePtr(AH) & 0xFF;
  if (bv != 0)
   res = res + (bv << bitShift);
  bitShift += 8;
 }

 if (sign)
  res = -res;

 return res;
}
