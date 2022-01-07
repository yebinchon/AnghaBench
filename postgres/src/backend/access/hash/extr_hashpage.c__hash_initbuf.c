
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32 ;
struct TYPE_2__ {int hasho_page_id; void* hasho_flag; void* hasho_bucket; int hasho_nextblkno; void* hasho_prevblkno; } ;
typedef int Page ;
typedef TYPE_1__* HashPageOpaque ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int HASHO_PAGE_ID ;
 int InvalidBlockNumber ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _hash_pageinit (int ,int ) ;

void
_hash_initbuf(Buffer buf, uint32 max_bucket, uint32 num_bucket, uint32 flag,
     bool initpage)
{
 HashPageOpaque pageopaque;
 Page page;

 page = BufferGetPage(buf);


 if (initpage)
  _hash_pageinit(page, BufferGetPageSize(buf));

 pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);






 pageopaque->hasho_prevblkno = max_bucket;
 pageopaque->hasho_nextblkno = InvalidBlockNumber;
 pageopaque->hasho_bucket = num_bucket;
 pageopaque->hasho_flag = flag;
 pageopaque->hasho_page_id = HASHO_PAGE_ID;
}
