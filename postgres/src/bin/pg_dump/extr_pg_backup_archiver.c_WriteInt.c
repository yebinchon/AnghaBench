
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int intSize; int (* WriteBytePtr ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ ArchiveHandle ;


 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*,int) ;

size_t
WriteInt(ArchiveHandle *AH, int i)
{
 int b;
 if (i < 0)
 {
  AH->WriteBytePtr(AH, 1);
  i = -i;
 }
 else
  AH->WriteBytePtr(AH, 0);

 for (b = 0; b < AH->intSize; b++)
 {
  AH->WriteBytePtr(AH, i & 0xFF);
  i >>= 8;
 }

 return AH->intSize + 1;
}
