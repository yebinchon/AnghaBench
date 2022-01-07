
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_3__ {int nactions; } ;
typedef TYPE_1__ ginxlogRecompressDataLeaf ;
typedef int StringInfo ;
typedef int ItemPointerData ;
typedef int GinPostingList ;






 int SHORTALIGN (int) ;
 int SizeOfGinPostingList (int *) ;
 int appendStringInfo (int ,char*,int,...) ;
 int memcpy (int*,char*,int) ;

__attribute__((used)) static void
desc_recompress_leaf(StringInfo buf, ginxlogRecompressDataLeaf *insertData)
{
 int i;
 char *walbuf = ((char *) insertData) + sizeof(ginxlogRecompressDataLeaf);

 appendStringInfo(buf, " %d segments:", (int) insertData->nactions);

 for (i = 0; i < insertData->nactions; i++)
 {
  uint8 a_segno = *((uint8 *) (walbuf++));
  uint8 a_action = *((uint8 *) (walbuf++));
  uint16 nitems = 0;
  int newsegsize = 0;

  if (a_action == 129 ||
   a_action == 128)
  {
   newsegsize = SizeOfGinPostingList((GinPostingList *) walbuf);
   walbuf += SHORTALIGN(newsegsize);
  }

  if (a_action == 131)
  {
   memcpy(&nitems, walbuf, sizeof(uint16));
   walbuf += sizeof(uint16);
   walbuf += nitems * sizeof(ItemPointerData);
  }

  switch (a_action)
  {
   case 131:
    appendStringInfo(buf, " %d (add %d items)", a_segno, nitems);
    break;
   case 130:
    appendStringInfo(buf, " %d (delete)", a_segno);
    break;
   case 129:
    appendStringInfo(buf, " %d (insert)", a_segno);
    break;
   case 128:
    appendStringInfo(buf, " %d (replace)", a_segno);
    break;
   default:
    appendStringInfo(buf, " %d unknown action %d ???", a_segno, a_action);

    return;
  }
 }
}
