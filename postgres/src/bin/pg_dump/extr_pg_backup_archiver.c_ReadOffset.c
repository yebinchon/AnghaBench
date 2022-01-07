
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int pgoff_t ;
struct TYPE_7__ {scalar_t__ version; int (* ReadBytePtr ) (TYPE_1__*) ;int offSize; } ;
typedef TYPE_1__ ArchiveHandle ;





 scalar_t__ K_VERS_1_7 ;
 int ReadInt (TYPE_1__*) ;
 int fatal (char*,...) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;

int
ReadOffset(ArchiveHandle *AH, pgoff_t * o)
{
 int i;
 int off;
 int offsetFlg;


 *o = 0;


 if (AH->version < K_VERS_1_7)
 {

  i = ReadInt(AH);

  if (i < 0)
   return 129;
  else if (i == 0)
   return 130;


  *o = (pgoff_t) i;
  return 128;
 }
 offsetFlg = AH->ReadBytePtr(AH) & 0xFF;

 switch (offsetFlg)
 {
  case 129:
  case 130:
  case 128:

   break;

  default:
   fatal("unexpected data offset flag %d", offsetFlg);
 }




 for (off = 0; off < AH->offSize; off++)
 {
  if (off < sizeof(pgoff_t))
   *o |= ((pgoff_t) (AH->ReadBytePtr(AH))) << (off * 8);
  else
  {
   if (AH->ReadBytePtr(AH) != 0)
    fatal("file offset in dump file is too large");
  }
 }

 return offsetFlg;
}
