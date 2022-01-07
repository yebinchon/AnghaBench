
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gdIOCtx ;
struct TYPE_2__ {unsigned char disposal; unsigned char inputFlag; int delayTime; } ;


 int FALSE ;
 scalar_t__ GetDataBlock (int *,unsigned char*,int*) ;
 TYPE_1__ Gif89 ;
 int LM_to_uint (unsigned char,unsigned char) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int
DoExtension(gdIOCtx *fd, int label, int *Transparent, int *ZeroDataBlockP)
{
 unsigned char buf[256];

 switch (label) {
  case 0xf9:
   memset(buf, 0, 4);
               (void) GetDataBlock(fd, (unsigned char*) buf, ZeroDataBlockP);





   if ((buf[0] & 0x1) != 0)
    *Transparent = buf[3];

   while (GetDataBlock(fd, (unsigned char*) buf, ZeroDataBlockP) > 0);
   return FALSE;
  default:
   break;
 }
       while (GetDataBlock(fd, (unsigned char*) buf, ZeroDataBlockP) > 0)
  ;

 return FALSE;
}
