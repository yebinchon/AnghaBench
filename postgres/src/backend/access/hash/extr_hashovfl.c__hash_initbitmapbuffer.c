
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {int hasho_bucket; int hasho_page_id; int hasho_flag; void* hasho_nextblkno; void* hasho_prevblkno; } ;
struct TYPE_3__ {int pd_lower; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_2__* HashPageOpaque ;
typedef int Buffer ;


 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int HASHO_PAGE_ID ;
 int * HashPageGetBitmap (scalar_t__) ;
 void* InvalidBlockNumber ;
 int LH_BITMAP_PAGE ;
 int MemSet (int *,int,int) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int _hash_pageinit (scalar_t__,int ) ;

void
_hash_initbitmapbuffer(Buffer buf, uint16 bmsize, bool initpage)
{
 Page pg;
 HashPageOpaque op;
 uint32 *freep;

 pg = BufferGetPage(buf);


 if (initpage)
  _hash_pageinit(pg, BufferGetPageSize(buf));


 op = (HashPageOpaque) PageGetSpecialPointer(pg);
 op->hasho_prevblkno = InvalidBlockNumber;
 op->hasho_nextblkno = InvalidBlockNumber;
 op->hasho_bucket = -1;
 op->hasho_flag = LH_BITMAP_PAGE;
 op->hasho_page_id = HASHO_PAGE_ID;


 freep = HashPageGetBitmap(pg);
 MemSet(freep, 0xFF, bmsize);






 ((PageHeader) pg)->pd_lower = ((char *) freep + bmsize) - (char *) pg;
}
