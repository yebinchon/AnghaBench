
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bits8 ;
struct TYPE_9__ {TYPE_1__* bd_tupdesc; } ;
struct TYPE_8__ {int bt_info; int bt_blkno; } ;
struct TYPE_7__ {int natts; } ;
typedef int Size ;
typedef TYPE_2__ BrinTuple ;
typedef TYPE_3__ BrinDesc ;
typedef int BlockNumber ;


 scalar_t__ BITMAPLEN (int) ;
 int BRIN_NULLS_MASK ;
 int BRIN_PLACEHOLDER_MASK ;
 int HIGHBIT ;
 int MAXALIGN (int) ;
 int SizeOfBrinTuple ;
 TYPE_2__* palloc0 (int) ;

BrinTuple *
brin_form_placeholder_tuple(BrinDesc *brdesc, BlockNumber blkno, Size *size)
{
 Size len;
 Size hoff;
 BrinTuple *rettuple;
 int keyno;
 bits8 *bitP;
 int bitmask;


 len = SizeOfBrinTuple;
 len += BITMAPLEN(brdesc->bd_tupdesc->natts * 2);
 len = hoff = MAXALIGN(len);

 rettuple = palloc0(len);
 rettuple->bt_blkno = blkno;
 rettuple->bt_info = hoff;
 rettuple->bt_info |= BRIN_NULLS_MASK | BRIN_PLACEHOLDER_MASK;

 bitP = ((bits8 *) ((char *) rettuple + SizeOfBrinTuple)) - 1;
 bitmask = HIGHBIT;

 for (keyno = 0; keyno < brdesc->bd_tupdesc->natts; keyno++)
 {
  if (bitmask != HIGHBIT)
   bitmask <<= 1;
  else
  {
   bitP += 1;
   *bitP = 0x0;
   bitmask = 1;
  }

  *bitP |= bitmask;
 }


 *size = len;
 return rettuple;
}
