
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8 ;
typedef int uint32 ;
struct TYPE_6__ {int ReadRecPtr; TYPE_3__* blocks; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_8__ {char* bkp_image; int bimg_info; scalar_t__ hole_length; scalar_t__ hole_offset; int bimg_len; int has_image; int in_use; } ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_2__ PGAlignedBlock ;
typedef TYPE_3__ DecodedBkpBlock ;


 int BKPIMAGE_IS_COMPRESSED ;
 scalar_t__ BLCKSZ ;
 int MemSet (char*,int ,scalar_t__) ;
 int memcpy (char*,char*,scalar_t__) ;
 scalar_t__ pglz_decompress (char*,int ,char*,scalar_t__,int) ;
 int report_invalid_record (TYPE_1__*,char*,int ,int ,size_t) ;

bool
RestoreBlockImage(XLogReaderState *record, uint8 block_id, char *page)
{
 DecodedBkpBlock *bkpb;
 char *ptr;
 PGAlignedBlock tmp;

 if (!record->blocks[block_id].in_use)
  return 0;
 if (!record->blocks[block_id].has_image)
  return 0;

 bkpb = &record->blocks[block_id];
 ptr = bkpb->bkp_image;

 if (bkpb->bimg_info & BKPIMAGE_IS_COMPRESSED)
 {

  if (pglz_decompress(ptr, bkpb->bimg_len, tmp.data,
       BLCKSZ - bkpb->hole_length, 1) < 0)
  {
   report_invalid_record(record, "invalid compressed image at %X/%X, block %d",
          (uint32) (record->ReadRecPtr >> 32),
          (uint32) record->ReadRecPtr,
          block_id);
   return 0;
  }
  ptr = tmp.data;
 }


 if (bkpb->hole_length == 0)
 {
  memcpy(page, ptr, BLCKSZ);
 }
 else
 {
  memcpy(page, ptr, bkpb->hole_offset);

  MemSet(page + bkpb->hole_offset, 0, bkpb->hole_length);
  memcpy(page + (bkpb->hole_offset + bkpb->hole_length),
      ptr + bkpb->hole_offset,
      BLCKSZ - (bkpb->hole_offset + bkpb->hole_length));
 }

 return 1;
}
