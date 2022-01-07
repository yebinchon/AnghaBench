
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
struct TYPE_8__ {scalar_t__ xl_tot_len; } ;
typedef TYPE_1__ XLogRecord ;
struct TYPE_9__ {scalar_t__ record_origin; scalar_t__ main_data_len; scalar_t__ max_block_id; int ReadRecPtr; scalar_t__ main_data_bufsz; char* errormsg_buf; void* main_data; TYPE_3__* blocks; TYPE_1__* decoded_record; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_10__ {int in_use; int apply_image; int has_image; int has_data; scalar_t__ data_len; scalar_t__ bimg_len; scalar_t__ hole_offset; scalar_t__ bimg_info; scalar_t__ hole_length; scalar_t__ rnode; scalar_t__ blkno; char* bkp_image; scalar_t__ data_bufsz; void* data; scalar_t__ flags; scalar_t__ forknum; } ;
typedef int RepOriginId ;
typedef scalar_t__ RelFileNode ;
typedef TYPE_3__ DecodedBkpBlock ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BKPBLOCK_FORK_MASK ;
 scalar_t__ BKPBLOCK_HAS_DATA ;
 scalar_t__ BKPBLOCK_HAS_IMAGE ;
 scalar_t__ BKPBLOCK_SAME_REL ;
 int BKPIMAGE_APPLY ;
 int BKPIMAGE_HAS_HOLE ;
 int BKPIMAGE_IS_COMPRESSED ;
 int BLCKSZ ;
 int COPY_HEADER_FIELD (scalar_t__*,int) ;
 scalar_t__ InvalidRepOriginId ;
 void* MAXALIGN (int ) ;
 int Max (scalar_t__,int) ;
 int ResetDecoder (TYPE_2__*) ;
 scalar_t__ SizeOfXLogRecord ;
 scalar_t__ XLR_BLOCK_ID_DATA_LONG ;
 scalar_t__ XLR_BLOCK_ID_DATA_SHORT ;
 scalar_t__ XLR_BLOCK_ID_ORIGIN ;
 scalar_t__ XLR_MAX_BLOCK_ID ;
 int memcpy (void*,char*,scalar_t__) ;
 void* palloc (scalar_t__) ;
 int pfree (void*) ;
 int report_invalid_record (TYPE_2__*,char*,scalar_t__,scalar_t__,...) ;

bool
DecodeXLogRecord(XLogReaderState *state, XLogRecord *record, char **errormsg)
{
 char *ptr;
 uint32 remaining;
 uint32 datatotal;
 RelFileNode *rnode = ((void*)0);
 uint8 block_id;

 ResetDecoder(state);

 state->decoded_record = record;
 state->record_origin = InvalidRepOriginId;

 ptr = (char *) record;
 ptr += SizeOfXLogRecord;
 remaining = record->xl_tot_len - SizeOfXLogRecord;


 datatotal = 0;
 while (remaining > datatotal)
 {
  do { if (remaining < sizeof(uint8)) goto shortdata_err; memcpy(&block_id, ptr, sizeof(uint8)); ptr += sizeof(uint8); remaining -= sizeof(uint8); } while(0);

  if (block_id == XLR_BLOCK_ID_DATA_SHORT)
  {

   uint8 main_data_len;

   do { if (remaining < sizeof(uint8)) goto shortdata_err; memcpy(&main_data_len, ptr, sizeof(uint8)); ptr += sizeof(uint8); remaining -= sizeof(uint8); } while(0);

   state->main_data_len = main_data_len;
   datatotal += main_data_len;
   break;

  }
  else if (block_id == XLR_BLOCK_ID_DATA_LONG)
  {

   uint32 main_data_len;

   do { if (remaining < sizeof(uint32)) goto shortdata_err; memcpy(&main_data_len, ptr, sizeof(uint32)); ptr += sizeof(uint32); remaining -= sizeof(uint32); } while(0);
   state->main_data_len = main_data_len;
   datatotal += main_data_len;
   break;

  }
  else if (block_id == XLR_BLOCK_ID_ORIGIN)
  {
   do { if (remaining < sizeof(RepOriginId)) goto shortdata_err; memcpy(&state->record_origin, ptr, sizeof(RepOriginId)); ptr += sizeof(RepOriginId); remaining -= sizeof(RepOriginId); } while(0);
  }
  else if (block_id <= XLR_MAX_BLOCK_ID)
  {

   DecodedBkpBlock *blk;
   uint8 fork_flags;

   if (block_id <= state->max_block_id)
   {
    report_invalid_record(state,
           "out-of-order block_id %u at %X/%X",
           block_id,
           (uint32) (state->ReadRecPtr >> 32),
           (uint32) state->ReadRecPtr);
    goto err;
   }
   state->max_block_id = block_id;

   blk = &state->blocks[block_id];
   blk->in_use = 1;
   blk->apply_image = 0;

   do { if (remaining < sizeof(uint8)) goto shortdata_err; memcpy(&fork_flags, ptr, sizeof(uint8)); ptr += sizeof(uint8); remaining -= sizeof(uint8); } while(0);
   blk->forknum = fork_flags & BKPBLOCK_FORK_MASK;
   blk->flags = fork_flags;
   blk->has_image = ((fork_flags & BKPBLOCK_HAS_IMAGE) != 0);
   blk->has_data = ((fork_flags & BKPBLOCK_HAS_DATA) != 0);

   do { if (remaining < sizeof(uint16)) goto shortdata_err; memcpy(&blk->data_len, ptr, sizeof(uint16)); ptr += sizeof(uint16); remaining -= sizeof(uint16); } while(0);

   if (blk->has_data && blk->data_len == 0)
   {
    report_invalid_record(state,
           "BKPBLOCK_HAS_DATA set, but no data included at %X/%X",
           (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
    goto err;
   }
   if (!blk->has_data && blk->data_len != 0)
   {
    report_invalid_record(state,
           "BKPBLOCK_HAS_DATA not set, but data length is %u at %X/%X",
           (unsigned int) blk->data_len,
           (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
    goto err;
   }
   datatotal += blk->data_len;

   if (blk->has_image)
   {
    do { if (remaining < sizeof(uint16)) goto shortdata_err; memcpy(&blk->bimg_len, ptr, sizeof(uint16)); ptr += sizeof(uint16); remaining -= sizeof(uint16); } while(0);
    do { if (remaining < sizeof(uint16)) goto shortdata_err; memcpy(&blk->hole_offset, ptr, sizeof(uint16)); ptr += sizeof(uint16); remaining -= sizeof(uint16); } while(0);
    do { if (remaining < sizeof(uint8)) goto shortdata_err; memcpy(&blk->bimg_info, ptr, sizeof(uint8)); ptr += sizeof(uint8); remaining -= sizeof(uint8); } while(0);

    blk->apply_image = ((blk->bimg_info & BKPIMAGE_APPLY) != 0);

    if (blk->bimg_info & BKPIMAGE_IS_COMPRESSED)
    {
     if (blk->bimg_info & BKPIMAGE_HAS_HOLE)
      do { if (remaining < sizeof(uint16)) goto shortdata_err; memcpy(&blk->hole_length, ptr, sizeof(uint16)); ptr += sizeof(uint16); remaining -= sizeof(uint16); } while(0);
     else
      blk->hole_length = 0;
    }
    else
     blk->hole_length = BLCKSZ - blk->bimg_len;
    datatotal += blk->bimg_len;





    if ((blk->bimg_info & BKPIMAGE_HAS_HOLE) &&
     (blk->hole_offset == 0 ||
      blk->hole_length == 0 ||
      blk->bimg_len == BLCKSZ))
    {
     report_invalid_record(state,
            "BKPIMAGE_HAS_HOLE set, but hole offset %u length %u block image length %u at %X/%X",
            (unsigned int) blk->hole_offset,
            (unsigned int) blk->hole_length,
            (unsigned int) blk->bimg_len,
            (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
     goto err;
    }





    if (!(blk->bimg_info & BKPIMAGE_HAS_HOLE) &&
     (blk->hole_offset != 0 || blk->hole_length != 0))
    {
     report_invalid_record(state,
            "BKPIMAGE_HAS_HOLE not set, but hole offset %u length %u at %X/%X",
            (unsigned int) blk->hole_offset,
            (unsigned int) blk->hole_length,
            (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
     goto err;
    }





    if ((blk->bimg_info & BKPIMAGE_IS_COMPRESSED) &&
     blk->bimg_len == BLCKSZ)
    {
     report_invalid_record(state,
            "BKPIMAGE_IS_COMPRESSED set, but block image length %u at %X/%X",
            (unsigned int) blk->bimg_len,
            (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
     goto err;
    }





    if (!(blk->bimg_info & BKPIMAGE_HAS_HOLE) &&
     !(blk->bimg_info & BKPIMAGE_IS_COMPRESSED) &&
     blk->bimg_len != BLCKSZ)
    {
     report_invalid_record(state,
            "neither BKPIMAGE_HAS_HOLE nor BKPIMAGE_IS_COMPRESSED set, but block image length is %u at %X/%X",
            (unsigned int) blk->data_len,
            (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
     goto err;
    }
   }
   if (!(fork_flags & BKPBLOCK_SAME_REL))
   {
    do { if (remaining < sizeof(RelFileNode)) goto shortdata_err; memcpy(&blk->rnode, ptr, sizeof(RelFileNode)); ptr += sizeof(RelFileNode); remaining -= sizeof(RelFileNode); } while(0);
    rnode = &blk->rnode;
   }
   else
   {
    if (rnode == ((void*)0))
    {
     report_invalid_record(state,
            "BKPBLOCK_SAME_REL set but no previous rel at %X/%X",
            (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
     goto err;
    }

    blk->rnode = *rnode;
   }
   do { if (remaining < sizeof(BlockNumber)) goto shortdata_err; memcpy(&blk->blkno, ptr, sizeof(BlockNumber)); ptr += sizeof(BlockNumber); remaining -= sizeof(BlockNumber); } while(0);
  }
  else
  {
   report_invalid_record(state,
          "invalid block_id %u at %X/%X",
          block_id,
          (uint32) (state->ReadRecPtr >> 32),
          (uint32) state->ReadRecPtr);
   goto err;
  }
 }

 if (remaining != datatotal)
  goto shortdata_err;
 for (block_id = 0; block_id <= state->max_block_id; block_id++)
 {
  DecodedBkpBlock *blk = &state->blocks[block_id];

  if (!blk->in_use)
   continue;

  Assert(blk->has_image || !blk->apply_image);

  if (blk->has_image)
  {
   blk->bkp_image = ptr;
   ptr += blk->bimg_len;
  }
  if (blk->has_data)
  {
   if (!blk->data || blk->data_len > blk->data_bufsz)
   {
    if (blk->data)
     pfree(blk->data);






    blk->data_bufsz = MAXALIGN(Max(blk->data_len, BLCKSZ));
    blk->data = palloc(blk->data_bufsz);
   }
   memcpy(blk->data, ptr, blk->data_len);
   ptr += blk->data_len;
  }
 }


 if (state->main_data_len > 0)
 {
  if (!state->main_data || state->main_data_len > state->main_data_bufsz)
  {
   if (state->main_data)
    pfree(state->main_data);
   state->main_data_bufsz = MAXALIGN(Max(state->main_data_len,
              BLCKSZ / 2));
   state->main_data = palloc(state->main_data_bufsz);
  }
  memcpy(state->main_data, ptr, state->main_data_len);
  ptr += state->main_data_len;
 }

 return 1;

shortdata_err:
 report_invalid_record(state,
        "record with invalid length at %X/%X",
        (uint32) (state->ReadRecPtr >> 32), (uint32) state->ReadRecPtr);
err:
 *errormsg = state->errormsg_buf;

 return 0;
}
